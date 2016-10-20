%---------Ploting the data---------
printf('Plotting Data ...\n')
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%-------- Running Gradient descent------
fprintf('Running Gradient Descent ...\n')

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
	iterations = 1500;
	alpha = 0.01;

% compute and display initial cost
costFunction(X, y, theta);

% run gradient descent
theta = gradientDescent(X, y, theta, alpha, iterations);

fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));


% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure
