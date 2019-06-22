function[s]=shift[x]
    for i=2:1:8
        x[i-1]=x[i]
        x[8]=0
    end
end