clc;
clear;
clc;

X = dlmread('valeurs.txt');

[n p] = size(X);
Y = X(1:end,9);
X = X(1:end,7:8);

mu = mean(X);
st = std(X);
v1 = ones(n,1);
Xcr = (X - mu(v1,:))./st(v1,:);

correlation = corrcoef(X)

[V lambda] = eig(corrcoef(X));
Xacp = Xcr * V(:,diag(lambda) >= 1);
[n k] = size(Xacp);
% Determine the range of Xacp for the separatrix line
minXacp = min(Xacp(:, 1));
maxXacp = max(Xacp(:, 1));
x_range = linspace(minXacp, maxXacp, 100);
y_sep = -1* x_range + 3,5;

figure
for i = 1:k
        for j = 1:k
                subplot(k,k,(i-1)*k+j);
                hold on;
                plot(Xacp(Y == 1,i),Xacp(Y == 1,j),'o');
                plot(Xacp(Y == 2,i),Xacp(Y == 2,j),'*k');
                plot(Xacp(Y == 3,i),Xacp(Y == 3,j),'+r');
                % Plot the separatrix line
                 plot(x_range, -1* x_range + 3,5, '-b');

                % Ensure the axes are consistent across all subplots
                 xlim([minXacp maxXacp]);
                 ylim([min(Xacp(:, j)) max(Xacp(:, j))]);
                 xlim([-7;7]);
                 ylim([-7;7]);
                hold off;
                grid;
        end
end

figure;
hold on;
polar((0:(atan(1)*8/99):(atan(1)*8))',ones(100,1));
xL = xlim;
yL = ylim;
plot([0 0], yL, 'k');  %x-axis
plot(xL, [0 0], 'k');  %y-axis

for i=1:p
  plot([0, correlation(i,1)],[0,correlation(i,2)]);
grid;
end
