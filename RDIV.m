function[q,r]=RDIV(x,y)
qq=[0 0 0 0 0 0 0 0];
qq(5:8)=x(1:4);

for i=1:1:4
    if(y(i)==0)
       y(i)=1
    else
        y(i)=0
    end
end
qq=shift(qq)
qq(1:4)=add(qq(1:4),y,1);

for i=1:1:4
if(qq(1)==1)
    qq(8)=0;
    qq(1:4)=add(qq(1:4),y,0);
else
    qq(8)=1;
end
end

q=qq(5:8);
r=qq(1:4);
end
