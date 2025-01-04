# NdAttG Code Repository

This repository contains implementations of the NdAttG model in both TensorFlow and PyTorch. It includes executable code for reproducing experiments in graph prediction, link prediction, and node prediction tasks.

## Folder Structure

- **tensor_sample**: Contains executable code for reproducing the graph-prediction experiment.
- **torch_sample**: Includes executable code for the link-prediction experiment and node-prediction experiments involving the OGB database.

## Environment Setup
 
Before running any experiments, make sure to set up your environment by installing all necessary dependencies. You can do this by running the following command:
 
```bash
pip install -r requirements.txt
```

## Running Experiments

### Table 1(a) Data
To obtain the data for Table 1(a), run the following bash script:
```bash
bash run_collab.sh
```

### Table 1(b) Data
To obtain the data for Table 1(b), run the following bash script:
```bash
bash run_citation2.sh
```

### Table 2(a) Data
To obtain the data for Table 2(a), replace `database_name` with the appropriate database name and run the following bash script:
```bash
bash run_database_name.sh
```

### Table 3 Data
To obtain the data for Table 3, run the following Python script. The hyperparameters can be modified in the `default_hypers` folder located at `tensor_sample/tasks/`:
```bash
python run_qm9_benchs.py
```

### Noise Experiment (Figure 6)
To reproduce Figure 6 from the noise experiment, run the following bash script:
```bash
bash run_noise.sh
```

### Additional Experiments
The code for experiments not mentioned here will be supplemented upon publication of the paper.

## Baseline Models

The tasks performed by the models include the widely used convolution-based GCN [@GCN], GraphSAGE [@GraphSAGE], and GIN [@GIN], as well as the attention-based GAT [@GAT] and GATv2 [@GATv2].

## Benchmark Databases

The benchmark databases used include:

- **ogbl-collab** [@ogb] and **ogbl-citation2** [@ogb] for link-prediction tasks.
- **Citation-Networks (Citeseer, Cora, and PubMed)** [@citation-networks], **PPI** [@PPI], **ogbn-arxiv**, **ogbn-mag**, **ogbn-products**, and **ogbn-proteins** [@ogb] for node-prediction tasks.
- **QM9** [@QM9] for graph-prediction tasks.

## References

[@GCN]:
```
T. N. Kipf, M. Welling, Semi-supervised classification with graph convolutional networks (2017). arXiv:1609.02907,
doi:https://arxiv.org/abs/1609.02907.
```

[@GraphSAGE]:
```
W. Hamilton, Z. Ying, J. Leskovec, Inductive representation learning on large graphs, in: I. Guyon, U. V. Luxburg, S. Bengio, H. Wallach, R. Fergus, S. Vishwanathan, R. Garnett (Eds.), Advances in Neural Information Processing Systems, Vol. 30, Curran Associates, Inc., 2017.
URL https://proceedings.neurips.cc/paper_files/paper/2017/file/5dd9db5e033da9c6fb5ba83c7a7ebea9-Paper.pdf
```

[@GAT]:
```
P. Veličković, G. Cucurull, A. Casanova, A. Romero, P. Liò, Y. Bengio, Graph attention networks (2018).
URL https://openreview.net/forum?id=rJXMpikCZ
```

[@GATv2]:
```
S. Brody, U. Alon, E. Yahav, How attentive are graph attention networks?, in: International Conference on Learning Representations, 2022.
URL https://openreview.net/forum?id=F72ximsx7C1
```

[@GIN]:
```
K. Xu,W. Hu, J. Leskovec, S. Jegelka, How powerful are graph neural networks? (2019). arXiv:1810.00826.
URL https://arxiv.org/abs/1810.00826
```

[@ogb]:
```
W. Hu, M. Fey, M. Zitnik, Y. Dong, H. Ren, B. Liu, M. Catasta, J. Leskovec, Open graph benchmark: Datasets for machine learning on graphs, in: H. Larochelle, M. Ranzato, R. Hadsell, M. Balcan, H. Lin (Eds.), Advances in Neural Information Processing Systems, Vol. 33, Curran Associates, Inc., 2020, pp. 22118–22133.
URL https://proceedings.neurips.cc/paper_files/paper/2020/file/fb60d411a5c5b72b2e7d3527cfc84fd0-Paper.pdf
```

[@QM9]:
```
M. Brockschmidt, GNN-FiLM: Graph neural networks with feature-wise linear modulation, in: H. D. III, A. Singh (Eds.), Proceedings of the 37th International Conference on Machine Learning, Vol. 119 of Proceedings of Machine Learning Research, PMLR, 2020, pp. 1144–1152.
URL https://proceedings.mlr.press/v119/brockschmidt20a.html
```

[@PPI]:
```
M. Zitnik, J. Leskovec, Predicting multicellular function through multi-layer tissue networks, Bioinformatics 33 (14) (2017) i190–i198.
doi:https://doi.org/10.1093/bioinformatics/btx252.
```

[@citation-networks]:
```
P. Sen, G. Namata, M. Bilgic, L. Getoor, B. Galligher, T. Eliassi-Rad, Collective classification in network data, AI magazine 29 (3) (2008) 93–93.
doi:https://doi.org/10.1609/aimag.v29i3.2157.
```
