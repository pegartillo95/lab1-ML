function J = costFunction(x,y,theta)
	
	m = length(y);%number of training examples
	
	J = 0;% we initialize the cost function to 0
	
	H = hypothesis(theta,x);
	S = sum((H -y) .^ 2);
	J = S/(2 *m);
	
	
endfunction