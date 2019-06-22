function [ S ] = sub( a,b )
%subtractor made using the add function we built before
    function[S,C]= HA(a,b)
            S=xor(a,b);
            C=and(a,b);
    end
    function[S,C]= FA(a,b,cin)
        [Sadder1,Cadder1]= HA(cin,a);
        [S,Cadder2]= HA(Sadder1,b);
        C= or(Cadder1,Cadder2);
    end
    b=xor(b,1);
    [S(1,4),C]=FA(a(1,4),b(1,4),1);
    [S(1,3),C]=FA(a(1,3),b(1,3),C);
    [S(1,2),C]=FA(a(1,2),b(1,2),C);
    [S(1,1),C]=FA(a(1,1),b(1,1),C);  
end

