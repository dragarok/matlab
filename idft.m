function [] = idft(K, k)
v = zeros(k);
for i=0:K-1
    v(i+1) = i / k;
end


n = linspace(0,k-1,k);
subplot(3,1,1);
stem(n,v);
subplot(3,1,2);
stem(n,abs(ifft(v)));
subplot(3,1,3);
stem(n,angle(ifft(v)));
