# Experimental Design — Full Factorial Worked Examples

[Original worked-example document](docs/full_factorial_worked_examples.pdf) · 23 PDF pages · French.

## Study design

The main example uses three factors at two levels: a complete `2^3` factorial design has eight combinations, repeated three times for **24 observations**. A separate table adds three centre-point observations. The document compares coded and natural factor levels, response means, within-setting variance, residual diagnostics, Cochran's variance-homogeneity test, coefficient tests and ANOVA.

## Model interpretation

With coded factors `A`, `B` and `C` taking values -1 and +1, the full model includes an intercept, three main effects, three pairwise interactions and one three-factor interaction:

`Y = b0 + bA*A + bB*B + bC*C + bAB*A*B + bAC*A*C + bBC*B*C + bABC*A*B*C`

The document presents reduced main-effect and pairwise-interaction models alongside the full interaction model. Its terms labelled second and third order refer to interaction order; a two-level design alone does not estimate separate pure-quadratic terms. Centre points provide a curvature check without identifying every quadratic coefficient.

## Statistical reading

- Compare `abs(t)` with the two-sided critical value, or use the corresponding p-value, for coefficient significance. A duplicated inequality in the original explanatory text should not be used as the decision rule.
- Repeated measurements provide an estimate of pure experimental error. Variance and standard deviation have different units and must remain distinct.
- The full three-factor interaction model has eight coefficients. With 24 observations at eight settings, the residual degrees of freedom are 16; it fits the setting means and leaves within-setting variation as residual error.
- The final cementation example uses a four-factor complete design with 16 observations and 16 coefficients. It has zero residual degrees of freedom: the displayed 100% R² is a saturated fit, and the missing standard errors/F tests do not establish perfect predictive performance.

The PDF is retained as an educational worked example with its original tables and software outputs. It complements the repository's PCA, regression and classification exercises; it is not presented as newly acquired experimental data.
