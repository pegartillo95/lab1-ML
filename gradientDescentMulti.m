function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
% Initialize some useful values
m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    h = X * theta;
    theta -= alpha * (1 / m) * (X' * (h - y));

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
