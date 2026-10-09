# Data Analysis — PCA and Introductory Machine Learning

MATLAB and Python laboratory work connecting statistical representations of data with supervised learning. The repository covers principal component analysis (PCA), nearest-neighbour classification and introductory linear regression.

## Project map

| Module | Technical focus | Files |
|---|---|---|
| [MATLAB PCA](ACP_MATLAB/) | Centring, standardisation, covariance and correlation matrices, eigendecomposition and projection | MATLAB scripts, data and working reports |
| [Python machine learning](Initiation_Machine_Learning_Python/) | Iris classification, train/test splitting, k-nearest neighbours and cross-validation | Standalone Python exercises |

## Engineering approach

PCA compares the geometry of raw and standardised variables: changing a variable's scale changes covariance-based components, whereas correlation-based PCA removes that unit dependence. Simulated Gaussian data provide a controlled example before an exploratory application to tabular data.

The classification exercises introduce the separation between fitting and evaluation. The neighbour count is a model parameter; cross-validation must use values compatible with the number of training samples in each fold.

## Getting started

Clone the repository and follow each module's README:

```bash
git clone https://github.com/tedjelmoulksn-dotcom/Analyse_de_Donnees.git
cd Analyse_de_Donnees
python -m venv .venv
source .venv/bin/activate
python -m pip install numpy matplotlib scikit-learn
```

Open the MATLAB scripts from their module directory so that relative data paths resolve correctly. Check the dataset filename before running the real-data PCA exercise.

## Reproducibility

This is a teaching archive rather than a packaged analysis pipeline. Some scripts contain draft sections. In particular, the cross-validation exercise overwrites its first split with an 80% test split, then sweeps neighbour counts beyond the training-fold size. Adjust that sweep before interpreting its results.

No classification scores, regression performance or new numerical results are claimed by this documentation update. The real-data PCA describes associations, not causal relationships.

## Repository ownership and reuse

Academic work maintained by Tedj El Moulk Sinacer. Original reports retain their language and attribution. No project-wide licence has been defined.
