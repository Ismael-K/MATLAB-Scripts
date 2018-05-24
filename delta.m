function [ y] = delta( x)

% x is a vector
% We create an output vector of only 0 (our default value)
y = zeros(1, length(x)); 

% We find indexes of input values equal to 0,
% and make them 1
y(find(x==0)) = 1;