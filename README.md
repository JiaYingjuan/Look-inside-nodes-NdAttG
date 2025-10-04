# Look Inside Nodes: A Novel Intranode Attention Mechanism for Graph Attention Networks

This repository contains the **PyTorch implementation** of the paper:  
**"Look Inside Nodes: A Novel Intranode Attention Mechanism for Graph Attention Networks"**.  

It includes executable code for reproducing experiments in **node prediction**, **link prediction**, and **graph prediction** tasks.

---

## 🧩 Environment Setup

Before running any experiments, make sure to set up your environment by installing all necessary dependencies:

```bash
pip install torch==2.4.0 torch_geometric==2.5.3 ogb==1.3.6 numpy==1.26.3 pandas==2.2.2
```

## Running Experiments

### Table 5 Results

To reproduce the results from Table 5 (node, link, and graph-level tasks), run the corresponding bash scripts:

```bash
# For node-level tasks
bash run_node.sh

# For link-level tasks  
bash run_link.sh

# For graph-level tasks
bash run_zinc.sh
```

### Tables 2-4 Results

To reproduce the results from Tables 2-4, transplant the INAT mechanism into the code from:

```
https://github.com/tech-srl/how_attentive_are_gats
```

## Project Structure

```
├── model/              # Backbone model implementations
├── graph_regression/   # Graph-level task
├── link_prediction/    # Link-level task
├── node_classification/  # Node-level task
├── dataset/            # Dataset storage directory  
├── run_node.sh         # Node-level task scripts
├── run_link.sh         # Link-level task scripts
├── run_zinc.sh         # Graph-level task scripts
└── ...
```

## Backbone Models

This implementation includes the following backbone models:

- **GAT** - Graph Attention Networks  
- **GATv2** - Improved graph attention mechanism
- **GLCN** - Graph Learning-Convolutional Networks
- **CFGAT** - Coarse-to-Fine Graph Attention Network
- **KAAGAT** - Kolmogorov-Arnold Attention for GATs
- **HLGAT** - High-frequency and Low-frequency dual-channel GAT

## References

- [GAT] Veličković, P., Cucurull, G., Casanova, A., Romero, A., Liò, P., & Bengio, Y. (2018). Graph attention networks. In International Conference on Learning Representations.

- [GATv2] Brody, S., Alon, U., & Yahav, E. (2022). How attentive are graph attention networks?. In International Conference on Learning Representations.

- [GLCN] Jiang, B., Zhang, Z., Lin, D., Tang, J., & Luo, B. (2019). Semi-supervised learning with graph learning-convolutional networks. In Proceedings of the IEEE/CVF conference on computer vision and pattern recognition (pp. 11313-11320).

- [CFGAT] Cui, D., Jin, F., Li, R. H., & Wang, G. (2020). CFGAT: A coarse-to-fine graph attention network for semi-supervised node classification. In 2020 IEEE 32nd International Conference on Tools with Artificial Intelligence (ICTAI) (pp. 1020-1027). IEEE.

- [HLGAT] Sun, Y., Duan, Y., Ma, H., Li, Y., & Wang, J. (2024). High-frequency and low-frequency dual-channel graph attention network. Pattern Recognition, 156, 110795.

- [KAAGAT] Fang, T., Gao, T., Wang, C., Shang, Y., Chow, W., Chen, L., & Yang, Y. (2025). KAA: Kolmogorov-Arnold attention for enhancing attentive graph neural networks. In International Conference on Learning Representations.


