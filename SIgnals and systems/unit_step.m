function [] = unit_step(range_low, range_high)
    t = [range_low:0.1:range_high];
    x = zeros(1,(range_high-range_low)*10+1);
    x(t>=0) = 1;
    plot(t,x)
    xlabel('time')
    ylabel('amplitude')