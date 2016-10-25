function J = computeCostMulti(X, y, theta)
% Initialize some useful values
m = length(y);

J = 0;

%Compute cost
h = X * theta;
squaredErrors = (h - y) .^ 2;
J = (1 / (2 * m)) * sum(squaredErrors);

end
