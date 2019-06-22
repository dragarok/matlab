function[s]=add(x,y,z)
for i=4:-1:1  
t= XORfunction(x(i),y(i));
s(i)= XORfunction(t,z);
c1= ANDfunction(x(i),y(i));
c2= ANDfunction(z,t);
c=ORfunction(c1,c2);
z=c;
end
end