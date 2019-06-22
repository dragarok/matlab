function[s,c]=FullAdder(n,x,y,z)
x=input('Enter a');
y=input('Enter b');
z=input('Enter c');
n=input('Enter n');
for i=n:-1:1  
t(i)= XORfunction(x(i),y(i));
s(i)= XORfunction(t(i),z);
c1(i)= ANDfunction(x(i),y(i));
c2(i)= ANDfunction(z,t(i));
c=ORfunction(c1(i),c2(i));
z=c;
end
z
end
