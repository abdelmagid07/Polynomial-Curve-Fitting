% Finding the Best Line of Best Fit

clear all, close all, clc

% Define the known x and y data points
x = [-10 11 24 42 75];
y = [407997 -626883 -3149100 -51951000 -945970000];

% Plot original data
figure(1)
plot(x, y, 'b.', 'MarkerSize', 10)
title('Original Data Points')
xlabel('X Values')
ylabel('Y Values')
grid on

% Create a smooth range of x-values for plotting the fit curves
Xs = x(1):0.2:x(end) + 10;

% --- Polynomial Fits ---

% Linear Fit
P = polyfit(x, y, 1);
Y1Fit = polyval(P, Xs);

% Quadratic Fit
Q = polyfit(x, y, 2);
Y2Fit = polyval(Q, Xs);

% Cubic Fit
R = polyfit(x, y, 3);
Y3Fit = polyval(R, Xs);

% Quartic Fit
S = polyfit(x, y, 4);
Y4Fit = polyval(S, Xs);

% --- Plot All Fits with Data ---
figure(2)
plot(x, y, 'b.', 'MarkerSize', 10); hold on
plot(Xs, Y1Fit, 'r', Xs, Y2Fit, 'g', Xs, Y3Fit, 'm', Xs, Y4Fit, 'k')
title('Polynomial Curve Fits')
xlabel('X Values')
ylabel('Y Values')
legend('Data', 'Linear', 'Quadratic', 'Cubic', 'Quartic', 'Location', 'northeast')
grid on
