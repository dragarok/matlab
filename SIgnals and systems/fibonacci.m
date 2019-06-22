 a=1;
 b=1;
 n=1;
while(n<20)
    while(n<20)
        c=a+b;
    end
    temp = b;
    b=c;
    a = temp;
    disp(c) 
    n=n+1;
end