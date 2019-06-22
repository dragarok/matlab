function[sum]=multiplier()
a=input('enter a');
b=input('enter b');
n=length(a);
for i=1:n-length(b)
    b=[0,b]; %make same dimensions of a and b
end

% start sum at 0
sum=zeros(1,n);
dash=a;

%multiplication procedure
for i=n:-1:1
    if (i~=n)
        dash=[dash,0];%shift appending 0 to the right
    end
    if(b(i)==1)
        sum=Adder(2*n-i,sum,dash);
    else
        sum=[0,sum];
    end
end
end