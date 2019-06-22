function [] = sinharmonics(w0)

t = linspace(-pi, pi, 100);
sum = 0;
for n=1:5
    a = sin( n * w0 * t);
    sum = sum + a;
    subplot(6,1,n);
    plot(t,a);
end
subplot(6,1,6);
plot(t,sum);
