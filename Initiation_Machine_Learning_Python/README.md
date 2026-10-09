# Initiation au Machine Learning en Python

## Vue d'ensemble
Premiers exercices de machine learning avec scikit-learn réalisés en TP (formation 2023–2026) : classification du jeu de données Iris par k plus proches voisins et régression linéaire.

## Objectifs
- Découper un jeu de données en apprentissage/test.
- Entraîner un classifieur kNN et évaluer sa précision.
- Choisir k par validation croisée.
- Réaliser une régression linéaire simple.

## Architecture
| Script | Contenu |
|---|---|
| `exo1_iris_decoupage.py` | Chargement d'Iris et découpage apprentissage/test |
| `exo2_knn_k1.py` | Classifieur kNN avec k=1 |
| `exo3_knn_validation_croisee.py` | `cross_val_score` (cv=5) pour k de 1 à 49, tracé du score en fonction de k |
| `tp2_regression_lineaire.py` | `LinearRegression` (une partie du script est commentée) |

## Matériel
Aucun.

## Logiciel
Python 3, scikit-learn, NumPy, Matplotlib.

## Implémentation
Scripts courts et indépendants s'appuyant sur les API scikit-learn.

## Principes d'ingénierie
- Séparation des données pour éviter le surapprentissage.
- Validation croisée pour le réglage d'un hyperparamètre.

## Résultats
Scores obtenus : À documenter (relancer les scripts).

## Difficultés / limites
Travail d'initiation ; partie commentée dans `tp2_regression_lineaire.py`.

## Structure
```
Initiation_Machine_Learning_Python/
├── README.md
├── .gitignore
└── src/
```

## Exécution
```bash
pip install scikit-learn numpy matplotlib
python src/exo3_knn_validation_croisee.py
```

## Médias
À documenter.

## Compétences
Python, scikit-learn, classification kNN, validation croisée, régression linéaire.
