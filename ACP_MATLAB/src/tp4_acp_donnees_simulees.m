X=randn(1000,2);
disp(X);
A=ones(1000,2);
M=mean(X);
B=A*diag(M);
%cetrage 
X=X-B;
sygma = std(X);
T=inv(diag(std(X)))
%reductio

X=X*T;
C=cov(X)
COEF=corrcoef(X);
ec=eig(C);
ecoef=eig(COEF);



X_prime=X * [ 1, 0 ; 0, 2 ];
c_X_prime=cov(X_prime);
coef_X_prime=corrcoef(X_prime);

ec_X_prime=eig(c_X_prime);
ecoef_X_prime=eig(coef_X_prime)



X_deux_prime= X * [ 1, 0 ; 0, 3 ];
c_X_deux_prime=cov(X_deux_prime);
coef_X_deux_prime=corrcoef(X_deux_prime);

ec_X_deux_prime=eig(c_X_deux_prime);
ecoef_X_deux_prime=eig(coef_X_deux_prime)

% question 9 :la transformation lineaire modifie les valeurs propres de la
% matrice de COVARIANCE 

% question 10 Pour chaque cas, nous devons observer les valeurs de la trace des matrices 
%de covariance et de corrélation, et les comparer avec les sommes de leurs valeurs propres respectives.
trace_cov_X = trace(C);
trace_corr_X = trace(COEF);


trace_cov_X_prime = trace(c_X_prime);
trace_corr_X_prime = trace(coef_X_prime);


trace_cov_X_deux_prime = trace(c_X_deux_prime);
trace_corr_X_deux_prime = trace(coef_X_deux_prime);
%Les transformations linéaires affectent la matrice de covariance,
%modifiant ainsi sa trace et ses valeurs propres, tandis que la matrice de corrélation reste inchangée à l'exception de l'échelle.
% Calcul des vecteurs propres et projections pour chaque jeu de données
% Pour X centré et réduit
[V_cov, D_cov] = eig(C);
[V_corr, D_corr] = eig(COEF);
proj_cov_X = X * V_cov;
proj_corr_X = X * V_corr;

% Pour X_prime
[V_cov_prime, D_cov_prime] = eig(c_X_prime);
[V_corr_prime, D_corr_prime] = eig(coef_X_prime);
proj_cov_X_prime = X_prime * V_cov_prime;
proj_corr_X_prime = X_prime * V_corr_prime;

% Pour X_deux_prime
[V_cov_deux_prime, D_cov_deux_prime] = eig(c_X_deux_prime);
[V_corr_deux_prime, D_corr_deux_prime] = eig(coef_X_deux_prime);
proj_cov_X_deux_prime = X_deux_prime * V_cov_deux_prime;
proj_corr_X_deux_prime = X_deux_prime * V_corr_deux_prime;

% Affichage avec subplot
figure;

% Projections pour X centré et réduit
subplot(3, 2, 1);
plot(proj_cov_X(:, 1), proj_cov_X(:, 2), 'o');
title('X in Covariance Eigenvector Basis');
xlabel('PC1');
ylabel('PC2');

subplot(3, 2, 2);
plot(proj_corr_X(:, 1), proj_corr_X(:, 2), 'o');
title('X in Correlation Eigenvector Basis');
xlabel('PC1');
ylabel('PC2');

% Projections pour X_prime
subplot(3, 2, 3);
plot(proj_cov_X_prime(:, 1), proj_cov_X_prime(:, 2), 'o');
title('X\_prime in Covariance Eigenvector Basis');
xlabel('PC1');
ylabel('PC2');

subplot(3, 2, 4);
plot(proj_corr_X_prime(:, 1), proj_corr_X_prime(:, 2), 'o');
title('X\_prime in Correlation Eigenvector Basis');
xlabel('PC1');
ylabel('PC2');

% Projections pour X_deux_prime
subplot(3, 2, 5);
plot(proj_cov_X_deux_prime(:, 1), proj_cov_X_deux_prime(:, 2), 'o');
title('X\_deux\_prime in Covariance Eigenvector Basis');
xlabel('PC1');
ylabel('PC2');

subplot(3, 2, 6);
plot(proj_corr_X_deux_prime(:, 1), proj_corr_X_deux_prime(:, 2), 'o');
title('X\_deux\_prime in Correlation Eigenvector Basis');
xlabel('PC1');
ylabel('PC2');

% Afficher la figure
figure(gcf);



