function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


%eValues = (e*ones(size(z))).^-z;
%g=(ones(size(z))+eValues).^-1;
%g=(exp(-z).+1).^-1;
g=power((exp(-z)+ones(size(z))),-1);

% =============================================================

end
