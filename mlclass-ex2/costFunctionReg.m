function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta



%from non reg: J = sum(-y.*log(sigmoid(X*theta))-(-y.+1).*log(-(sigmoid(X*theta)).+1)) / m;
%from non reg: grad = sum((sigmoid(X*theta)-y).*X) / m;

jNonReg = sum(-y.*log(sigmoid(X*theta))-(-y+ones(size(y))).*log(-(sigmoid(X*theta))+ones(size(y)))) / m;
jRegValue = (sum(power(theta,2))-theta(1)^2) * lambda / 2 / m;
J = jNonReg + jRegValue;

gradNonReg = sum((sigmoid(X*theta)-y).*X) / m;
gradRegValue = (lambda / m)*theta';
gradRegValue(1) = 0; 

grad = gradNonReg + gradRegValue;

% =============================================================

end
