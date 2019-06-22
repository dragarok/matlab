function[s]=twoscomp(x)
for i=1:length(x)
    if (x(i)==0)
        x(i)=1;
    else 
        x(i)=0;
    end
end
%add 1 to make two's complement
two=zeros(1,length(x));
two(length(x))=1;
s=Adder(length(x),x,two);
end