import os
import time
from typing import Tuple, Type, Dict, Any

import pickle

from models import (Sparse_Graph_Model, RGAT_Model, RGAT2_Model, NdAttG_Model)
from tasks import Sparse_Graph_Task, QM9_Task,  PPI_Task


def name_to_task_class(name: str) -> Tuple[Type[Sparse_Graph_Task], Dict[str, Any]]:
    name = name.lower()
    if name == "qm9":
        return QM9_Task, {}
    if name == "ppi":
        return PPI_Task, {}

    raise ValueError("Unknown task type '%s'" % name)


def name_to_model_class(name: str) -> Tuple[Type[Sparse_Graph_Model], Dict[str, Any]]:
    name = name.lower()
    if name in ["rgat", "rgat_model"]:
        return RGAT_Model, {}
    if name in ["rgat2", "gat2", "rgat2_model"]:
        return RGAT2_Model, {}
    if name in ["NdAttG", "ndattg", "NdAttG_model"]:
        return NdAttG_Model, {}

    raise ValueError("Unknown model type '%s'" % name)


def restore(saved_model_path: str, result_dir: str, run_id: str = None) -> Sparse_Graph_Model:
    print("Loading model from file %s." % saved_model_path)
    with open(saved_model_path, 'rb') as in_file:
        data_to_load = pickle.load(in_file)

    model_cls, _ = name_to_model_class(data_to_load['model_class'])
    task_cls, additional_task_params = name_to_task_class(data_to_load['task_class'])

    if run_id is None:
        run_id = "_".join([task_cls.name(), model_cls.name(data_to_load['model_params']), time.strftime("%Y-%m-%d-%H-%M-%S"), str(os.getpid())])

    task = task_cls(data_to_load['task_params'])
    task.restore_from_metadata(data_to_load['task_metadata'])

    model = model_cls(data_to_load['model_params'], task, run_id, result_dir)
    model.load_weights(data_to_load['weights'])

    model.log_line("Loaded model from snapshot %s." % saved_model_path)

    return model
