function[s]=subtractor(x,y,p)
x=input('enter a');
y=input('enter b');
z=0;

two=twoscomp(y);
x=[0,x];
s=Adder(length(x),x,two);

if (s(2)==1)
    s(2)=0;
    s
else
    s=twoscomp(s);
    disp negative    
    s(1)=0;
    s(2)=0;
    s(3)=0;
end
end
    
    
    
    