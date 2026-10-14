clc;
clear;
close all;

A = input('Enter matrix: ');
X = input('Enter initial vector: ');

for i = 1:10
    Y = A * X;
    lambda = max(abs(Y));
    X = Y / lambda;
end

fprintf('Dominant Eigenvalue = %.4f\n', lambda);
disp('Eigenvector = ');
disp(X);

