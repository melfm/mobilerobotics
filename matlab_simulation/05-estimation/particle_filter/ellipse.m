% Example of error ellipse and Gaussian noise generation
addpath('./lib')

% Define distribution
mu = [1; 2];
S = [4 -1; -1 1];

% Generate samples
[SE, Se] = eig(S);
samples = SE * sqrt(Se) * randn(2, 10000);

% Create ellipse plots
figure(1);
clf;
hold on;
%error_ellipse(S,mu,0.5)
%error_ellipse(S,mu,0.99)
plot(mu(1) + samples(1,:),mu(2) + samples(2,:), 'r.')
axis equal