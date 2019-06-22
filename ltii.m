function [yn] = ltii()
%this function calculates lti response

%{
for xn
xn = [1     1     1     1     1];
%}

%{
for n= 0:6
hn(n+1) = pow(2,n);
%}

%%initialization
for n= 0:6
hn(n+1) = power(2,n);
end

syms n
n = linspace(1,15,15);
xn = [1     1     1     1     1];

m = length(xn);
p = length(hn);

yn = zeros(m+p-1,1);
for k = 1:length(yn)
    summ = 0;
    for j = max(1,k+1-p):1:min(k,m)
        summ = summ + xn(j) * hn(k-j+1);
    end
    yn(k) = summ;
end

%{
ltii()

ans =

     1
     3
     7
    15
    31
    62
   124
   120
   112
    96
    64
%}

subplot(3,1,1);
stem(n(1, 1:length(xn)), xn);

axis([0 15 0 inf]);
subplot(3,1,2);
stem(n(1, 1:length(hn)), hn);

axis([0 15 0 inf]);
subplot(3,1,3);
stem(n(1, 1:length(yn)), yn);

axis([0 15 0 inf]);