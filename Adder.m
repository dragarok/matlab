function[s]=Adder(n,x,y)
z=0;
for i=n:-1:1  
t= XORfunction(x(i),y(i));
s(i)= XORfunction(t,z);
c1= ANDfunction(x(i),y(i));
c2= ANDfunction(z,t);
c=ORfunction(c1,c2);
z=c;
end
s=[z,s];
end