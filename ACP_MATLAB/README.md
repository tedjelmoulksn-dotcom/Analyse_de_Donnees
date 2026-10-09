# Analyse en composantes principales sous MATLAB

Scripts MATLAB d'analyse de données : une étude de l'ACP sur des données simulées (effet du centrage, de la réduction et des transformations linéaires sur la covariance et la corrélation), puis une ACP appliquée à un jeu de transactions immobilières pour observer l'effet de la hausse des taux d'intérêt.

## Vue d'ensemble

- **Cadre** : TP d'analyse de données, cycle ingénieur Instrumentation, Sup Galilée (Université Sorbonne Paris Nord), mai–juin 2024.
- **État** : travaux terminés, non maintenus.

## Objectifs

1. Comprendre ce que l'ACP calcule : valeurs et vecteurs propres de la matrice de covariance ou de corrélation.
2. Appliquer la méthode à des données réelles et chercher une séparation entre trois classes de taux.

## Logiciel

MATLAB (fonctions de base uniquement : `cov`, `corrcoef`, `eig`, `dlmread`, `plot`). Aucune boîte à outils dédiée à l'ACP n'est utilisée.

## Implémentation

| Fichier | Contenu |
|---|---|
| `src/tp4_acp_donnees_simulees.m` | 1 000 points gaussiens en 2 dimensions : centrage, réduction, covariance, corrélation, valeurs propres ; mêmes calculs après mise à l'échelle d'un axe (×2, ×3) ; comparaison de la trace et de la somme des valeurs propres ; projection sur les vecteurs propres et tracé des six nuages de points |
| `src/acp_modifie.m` | Lecture de `valeurs.txt`, sélection de deux variables (colonnes 7 et 8) et de la classe (colonne 9), centrage-réduction, diagonalisation de la matrice de corrélation, tri des valeurs propres, projection, tracé des trois classes et d'une droite séparatrice, cercle des corrélations |
| `src/ACP2.m` | Variante antérieure du script appliqué aux données |

## Principes d'ingénierie

- **Centrage et réduction** : `Xcr = (X − moyenne) ./ écart-type`, nécessaire quand les variables n'ont pas le même ordre de grandeur (valeur foncière, surface, nombre de pièces).
- **Diagonalisation** : `[V, lambda] = eig(corrcoef(X))`, composantes triées par valeur propre décroissante.
- **Constat du TP sur données simulées** : une mise à l'échelle d'un axe modifie les valeurs propres de la covariance, pas celles de la corrélation.
- **Règle de Kaiser** citée dans le compte rendu pour choisir le nombre de composantes à conserver.

## Résultats

Conclusions rédigées dans le compte rendu (`docs/acp_analyse_de_donnees.docx`) :

- les deux variables retenues évoluent de la même façon selon le premier facteur ;
- les trois classes de taux se chevauchent partiellement mais une séparation linéaire est proposée (droite `y = −x + 3,5` dans le compte rendu) ;
- l'effet de la hausse des taux sur les transactions est jugé réel mais modéré.

Aucune figure exportée n'est conservée : **à documenter** en relançant les scripts.

## Difficultés et limites

- `acp_modifie.m` lit `valeurs.txt` ; le fichier conservé dans `data/` s'appelle `DataACP.txt`. La correspondance entre les deux est **à vérifier** avant exécution.
- L'origine et la licence du jeu de données immobilières ne sont pas précisées : **à vérifier avant publication** (le fichier fait environ 2 Mo).
- Les limites d'axes sont fixées à la main et redéfinies plusieurs fois dans le script ; la droite séparatrice du script (`−x + 2`) diffère de celle du compte rendu.

## Structure du dépôt

```
src/     Scripts MATLAB
data/    Jeu de données (origine à vérifier)
docs/    Compte rendu et brouillon
```

## Exécution

```matlab
cd src
tp4_acp_donnees_simulees      % ne dépend d'aucun fichier
acp_modifie                   % nécessite valeurs.txt dans le dossier courant
```

Non rejoué lors de la rédaction de cette documentation.

## Compétences démontrées

- Statistiques multivariées : covariance, corrélation, valeurs propres, projection.
- MATLAB : calcul matriciel, lecture de fichiers, visualisation.
- Interprétation et rédaction de conclusions à partir de données réelles.

## Licence

Aucune licence n'a été définie.
