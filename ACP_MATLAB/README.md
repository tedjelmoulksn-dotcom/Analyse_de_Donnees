# Principal Component Analysis in MATLAB

PCA exercises on simulated Gaussian observations and tabular data, with comparison of covariance-based and correlation-based representations.

## Method

For a centred data matrix, the scripts compute covariance/correlation matrices, extract eigenvalues and eigenvectors, and project observations onto principal directions. Standardisation divides each variable by its standard deviation before analysis.

The simulated study uses 1000 two-dimensional observations. Scaling one coordinate by factors such as two or three changes covariance geometry; correlation-based PCA removes this scale dependence.

## Files

| Location | Content |
|---|---|
| [`src/`](src/) | `ACP2.m`, `acp_modifie.m` and `tp4_acp_donnees_simulees.m` |
| [`data/DataACP.txt`](data/DataACP.txt) | Archived tabular dataset |
| [`docs/`](docs/) | Working PCA reports |

## Running

Open MATLAB from this module and inspect the selected script's input path before execution. The real-data script refers to `valeurs.txt`, while the committed dataset is `data/DataACP.txt`; verify that its expected columns match before changing the path.

The scripts use standard MATLAB operations including `cov`, `corrcoef`, `eig` and plotting. Sort eigenpairs consistently when interpreting principal-component order.

## Interpretation

The real-data exercise uses columns seven/eight and a ninth-column class indicator. Dataset provenance, column units and class meaning require explicit verification. Exploratory associations do not establish causal economic effects.

Report and script versions differ in some reference-line parameters. Keep the active script version with each figure and interpret eigenvector direction consistently, remembering that its sign is arbitrary.

## Licence

No project-wide licence has been defined.
