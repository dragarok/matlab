function u = unitImpulse()
%this function generates a unit step signal based on the input

t = linspace(-10,10,19);
%get no of samples
N = numel(t);

%initialize the unit step value
u = zeros(N,1);

u(t==0) = 1;

stem(t,u);