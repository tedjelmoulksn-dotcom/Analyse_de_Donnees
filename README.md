# Data Analysis and Machine Learning

Introductory studies in principal component analysis and supervised learning. MATLAB scripts explore covariance, correlation and projections; Python exercises use Iris classification, k-nearest neighbours, cross-validation and linear regression.

## Repository guide
| Dossier | Contenu | Outils |
|---|---|---|
| [`ACP_MATLAB/`](ACP_MATLAB/) | Analyse en composantes principales : centrage-réduction, matrices de covariance et de corrélation, valeurs propres, projections | MATLAB |
| [`Initiation_Machine_Learning_Python/`](Initiation_Machine_Learning_Python/) | Jeu Iris, classifieur kNN, validation croisée pour choisir k, régression linéaire | Python, scikit-learn |

| Location | Contents |
|---|---|
| [ACP_MATLAB/](ACP_MATLAB/) | PCA scripts, datasets and reports |
| [Initiation_Machine_Learning_Python/](Initiation_Machine_Learning_Python/) | Python learning exercises and original variants |
| [assets/](assets/) | Project overview |
![Analyse de Donnees project overview](assets/project-overview.svg)

*Study overview: PCA and classification are complementary analysis paths.*

## Plans d’expériences

Le dossier [experimental_design/](experimental_design/) ajoute un exemple traité de plan factoriel complet : trois facteurs à deux niveaux, huit combinaisons et trois répétitions, puis essais au centre, interactions, régression et ANOVA. Le [guide en anglais](experimental_design/README.md) explique le modèle et les distinctions statistiques nécessaires pour lire les résultats du document original.

## Compétences
Statistiques multivariées, réduction de dimension, classification supervisée, validation croisée.

## Getting started

For Python, install `numpy`, `matplotlib` and `scikit-learn`, then run the exercises in `Initiation_Machine_Learning_Python/src/`. Open the PCA scripts in MATLAB and keep their input datasets available in the working directory.

## Project context

Academic exercises at Sup Galilée. Original scripts are preserved alongside the organised examples.

An original PCA script with legacy encoding remains in [the analogue-electronics archive](https://github.com/tedjelmoulksn-dotcom/Electronique_Analogique/blob/main/archive/pca_original/acp_midifie.m).
