function [yn] = lti()
%this function calculates lti response
xn = [1     1     1     1     1];
hn = [1     2     4     8    16    32    64];
m = length(xn)
n = length(hn)
wn = zeros(m+n-1,1);
for k = 1:length(wn)
    summ = 0;
    for j = max(1,k+1-n):1:min(k,m)
        summ = summ + xn(j) * hn(k-j+1);
    end
    wn(k) = summ;
end