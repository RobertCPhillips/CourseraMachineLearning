function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

%s0 = 0;
%s1 = 0;

%for i = 1:m
%  s0 = s0 + (X(i,1)*theta(1)+X(i,2)*theta(2)-y(i));
%  s1 = s1 + (X(i,1)*theta(1)+X(i,2)*theta(2)-y(i))*X(i,2);
%end

%s0 = s0/m;
%s1 = s1/m;

%theta = theta - alpha * [s0;s1];

temp = X*theta-y;
A = [sum(temp);sum(temp.*X(:,2))];
theta = theta - (alpha / m) * A;




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
