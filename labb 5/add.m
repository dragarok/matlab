function [ s ] = add( a,b )
%Simple add function with full adder implementation
    for i=4:-1:1
        c(5)=0;
        s(i)=xor(xor(a(i),b(i)),c(i+1));
    
        c(i) = or(and(a(i),b(i)),and(c(i+1),xor(a(i),b(i))));
    end
     c=c(1);
     s
 
end
 

