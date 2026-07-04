clc;
clear;

% Input 3x3 matrix
disp('Enter the 3x3 matrix A:');
for i = 1:3
    for j = 1:3
        A(i,j) = input(sprintf('A(%d,%d): ', i, j));
    end
end

% Input tolerance and max iterations
tol = input('Enter tolerance: ');
max_iter = input('Enter max iterations: ');

% Initial guess vector
v = [1; 1; 1];

lambda_old = 0;
converged = false;

disp('Iteration  Eigenvalue');
for iter = 1:max_iter
    v_new = A * v;
    lambda = max(abs(v_new));
    v = v_new / lambda;

    if abs(lambda - lambda_old) / abs(lambda) < tol
        converged = true;
        fprintf('Converged at iteration %d\n', iter);
        break;
    end
    lambda_old = lambda;
    fprintf('%5d     %10.6f\n', iter, lambda);
end

if ~converged
    fprintf('Did not converge in %d iterations\n', max_iter);
end

fprintf('\nDominant eigenvalue: %.6f\n', lambda);
disp('Corresponding eigenvector:');
disp(v);
