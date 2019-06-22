function [] = explot_r(c, theta, r, omega_knot)
t = -pi:pi/10:4*pi;
theta = pi/180* theta;
c_real = abs(c) * cos(omega_knot * t + theta - pi/2) .* exp(r* t);
plot(t,c_real);