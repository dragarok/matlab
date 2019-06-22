function [ Q ] = Divre( Q,M )
%division function is written here and shift nested inside it
     function pu = shift(w)
        pu=zeros(1,8);
        for j=8:-1:2
            pu(:,j-1)=w(:,j);
        end
    end
      
    A = zeros(1,4);
    count = 1;
    
    for i=1:1:4
       
         a3 = [A Q];
         a3 = shift(a3);
         midindex =  floor (length (a3) / 2) ;
         A = a3 (1:midindex) ;
         Q  = a3 (midindex+1 :end) ;
         
         A = sub(A,M);
          
        if A(1) == 1
            Q(4)= 0;
            A = add(A,M);
        else
            Q(4) = 1; 
        end
        count = count + 1;
    end
    disp('quotient is')
    
    disp(Q)
    disp('remainder is')
    disp(A)
end

