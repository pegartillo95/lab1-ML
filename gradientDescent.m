function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
	
	%Initialization of values
	m = length(y); % number of training examples
	J_history = zeros(num_iters, 1);
	J = 0;
	theta_1 = theta(1,1);
	theta_2 = theta(2,1);
	
	for iter = 1:num_iters
		J = costFunction(X, y, theta);
		H = X*theta;
		    
		H_1 = (H - y) .* X(:,1);
		H_2 = (H - y) .* X(:,2);
		    
		theta_1 = theta_1 - alpha * (1/m) * sum(H_1);
		theta_2 = theta_2 - alpha * (1/m) * sum(H_2);
		
		theta(1,1) = theta_1;
		theta(2,1) = theta_2;
		
		% Save the cost J in every iteration    
		J_history(iter) = costFunction(X, y, theta);	

	end	
	
endfunction
