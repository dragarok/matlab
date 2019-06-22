
function [tc,c] = twocomp(x, n)
temp = xor(x,ones(1,n)); 
[tc,c] = adder(temp,[zeros(1,n-1) 1],n);
end