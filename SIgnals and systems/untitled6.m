
x = 0:pi/18:5 * pi;
y = sin(x)
z = exp(-1/2*x)
a = exp(1/2*x)
b = cos(x)
subplot(2,2,1);
plot(x,y)
xlabel('x')
ylabel('sinx')
 
 
subplot(2,2,2)
plot(x,z)
ylabel('exponentialdecay')
xlabel('x')
 
 
 
subplot(2,2,3)
plot(x,b)
ylabel('cosine wave')
xlabel('x')
 
 
subplot(2,2,4)
plot(x,a)
ylabel('exponential rise')
xlabel('x')
