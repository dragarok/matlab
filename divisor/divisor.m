function[m,q] = divisor()
n= input('enter n');
m = input('Enter divisor');
q = input('Enter dividend');

for i = 1:1:n
    qq(i) = 0;
end
for i = n+1:1:2*n
    qq(i)= q(i-n);
end
for i = 1:1:n
for i = 1:1:2*n-1
    qq(i)=qq(i+1);
end
y = twocomp(m,n)
[qq(1:n),c]=adder(qq(1:n),y,n);


if qq(1) ==1
 qq(2*n) = 0;
 [qq(1:n),c]=adder(qq(1:n),m,n);
else
    qq(2*n)=1;
end

end
disp('quotient is')
disp(qq(n+1:2*n))
disp('remainder is')
disp(qq(1:n))



    