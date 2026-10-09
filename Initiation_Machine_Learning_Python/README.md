# Introductory Machine Learning in Python

Exercises on Iris classification, nearest-neighbour selection and introductory linear regression.

## Scripts

| Script | Purpose |
|---|---|
| [`exo1_iris_decoupage.py`](src/exo1_iris_decoupage.py) | Inspect Iris data and train/test partitions |
| [`exo2_knn_k1.py`](src/exo2_knn_k1.py) | Classify with one nearest neighbour |
| [`exo3_knn_validation_croisee.py`](src/exo3_knn_validation_croisee.py) | Explore neighbour counts using five-fold validation |
| [`tp2_regression_lineaire.py`](src/tp2_regression_lineaire.py) | Working linear-regression exercise |

## Environment

```bash
python -m venv .venv
source .venv/bin/activate
python -m pip install numpy matplotlib scikit-learn
python src/exo2_knn_k1.py
```

Run commands from this module directory. The scripts are standalone educational examples, not a packaged training pipeline.

## Cross-validation review

The validation script overwrites its initial split with `test_size=0.8`, leaving only 30 of the 150 Iris observations for training. With five folds, each fitted model has 24 training observations. A neighbour sweep through 49 therefore exceeds the available fold size.

Use neighbour counts no larger than the smallest training fold, select parameters using training data and retain a final independent test set. Review comments that reverse the training/test proportions.

## Validation status

Some regression sections are commented drafts. No accuracy, regression score or completed parameter sweep is claimed from a fresh run. Reproducible continuation should record dependency versions, split policy and evaluation results.

## Licence

No project-wide licence has been defined.
