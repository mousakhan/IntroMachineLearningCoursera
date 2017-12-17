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


h = sigmoid(X * theta);
difference = (-y' * log(h)) - ((1-y)' * log(1-h));
regularization = 0;

for c = 2:size(theta)
    regularization = regularization + sum(theta(c).^2);
end

J = (sum(difference) * (1/m)) + ((lambda/(2*m)) * regularization);



for c = 1:size(theta)
    if c == 1
            grad(c,:) = ((1/m) * (sum((h - y)' * X(:,c))));
    else
            grad(c,:) = ((1/m) * (sum((h - y)' * X(:,c)))) + ((lambda/m) * theta(c));
    end

end



% =============================================================

end
