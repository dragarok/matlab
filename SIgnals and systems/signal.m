x = zeros(1,4)
for(n=1:4)
    sum = 0
    for(k=1:4)
        sum = sum + exp((2* pi/ 4)* j * k *n);
    end
    x(n) =sum/4;
end
disp(x);