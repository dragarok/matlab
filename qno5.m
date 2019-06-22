function [] = qno5(tau, tp)
for k=1:tp
    x(k) = 2 * tau /tp * sin(k * 2 * tau/tp) / ( k* 2* tau/tp);
end

t = linspace(0,tp-1,tp);
stem(t,x);
