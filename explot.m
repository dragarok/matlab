function [] = explot(c, a)
%plot a ce^ax function with both c and a
       x = 0:0.1:10;
       y = real(c * exp( a* x))
       plot(x,y)
