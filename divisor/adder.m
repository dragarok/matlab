function[s,c]=adder(x,y,n)
cin=0;
for i = n:-1:1
   s(i) = xor(xor(x(i),y(i)),cin);
   c = or(and(x(i),y(i)),and(cin,xor(x(i),y(i))));
   cin=c;
   
end
disp(s)
end
