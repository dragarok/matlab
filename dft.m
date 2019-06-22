function [] = dft(N, M)
u = zeros(M);
for i=0:N-1
    u(i+1) = 1;
end


n = linspace(0,M-1,M);
subplot(3,1,1);
stem(n,u);
subplot(3,1,2);
stem(n,abs(fft(u)));
subplot(3,1,3);
stem(n,angle(fft(u)));
