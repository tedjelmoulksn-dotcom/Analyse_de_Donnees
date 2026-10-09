clc;
clear;
close all;

% Lecture des données
X = dlmread('valeurs.txt');

[n, p] = size(X);
Y = X(:,9);  % Assurez-vous que la 9e colonne est correcte pour Y
X = X(:,7:8);  % Utiliser les colonnes 7 et 8 pour X

% Normalisation des données
mu = mean(X);
st = std(X);
Xcr = (X - mu) ./ st;

% Calcul de la matrice de corrélation
correlation = corrcoef(X);

% Analyse en Composantes Principales (ACP)
[V, lambda] = eig(correlation);
%Xacp = Xcr * V(:,diag(lambda) >= 1);
[lambda_sorted, indices] = sort(diag(lambda), 'descend');
V = V(:, indices);
Xacp = Xcr * V(:, 1:2);
[n, k] = size(Xacp);
% Determine the range of Xacp for the separatrix line
minXacp = min(Xacp(:, 1));
maxXacp = max(Xacp(:, 1));
x_range = linspace(minXacp, maxXacp, 100);
y_sep = -1* x_range + 2;



% Affichage des nuages de points
figure;
for i = 1:k
    for j = 1:k
        subplot(k, k, (i-1)*k + j);
        hold on;
        plot(Xacp(Y == 1, i), Xacp(Y == 1, j), 'o');
        plot(Xacp(Y == 2, i), Xacp(Y == 2, j), '*k');
        plot(Xacp(Y == 3, i), Xacp(Y == 3, j), '+r');
        % Plot the separatrix line
        plot(x_range, -1* x_range + 2, '-b');
        % Ensure the axes are consistent across all subplots
        xlim([minXacp maxXacp]);
        ylim([min(Xacp(:, j)) max(Xacp(:, j))]);
        xlim([-7;7]);
        ylim([-7;7]);
% Affichage des ve
        ylim([-8 8]);
        xlim([-8 8]);
        hold off;
        grid on;
    end
end

%A modifier
figure;
hold on;
plot(Xacp(Y == 1, 1), Xacp(Y == 1, 2), 'o');
plot(Xacp(Y == 2, 1), Xacp(Y == 2, 2), '*k');
plot(Xacp(Y == 3, 1), Xacp(Y == 3, 2), '+r');
ylim([-8 8]);
xlim([-8 8]);
% Plot the separatrix line
plot(x_range, -1* x_range + 2, '-b');
% Ensure the axes are consistent across all subplots
xlim([minXacp maxXacp]);
ylim([min(Xacp(:, j)) max(Xacp(:, j))]);
xlim([-7;7]);
ylim([-7;7]);
% Affichage des vecteurs de corrélation
figure;
hold on;
polar((0:(atan(1)*8/99):(atan(1)*8))',ones(100,1));
xL = xlim;
yL = ylim;
plot([0 0], yL, 'k');  % Axe des x
plot(xL, [0 0], 'k');  % Axe des y

for i = 1:2
    plot([0, correlation(i,1)], [0, correlation(i,2)]);
end

grid on;
hold off;

