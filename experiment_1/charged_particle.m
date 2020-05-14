global B E q m
B = input('Please Input B=');
E = input('Please Input E=');
q = 1.6e-2; m = 0.02;
tspan = (0:0.1:20);
y0 = [0, 0.01, 0, 4, 0, 0.01];
[t, y] = ode23('charged_particle_fun', tspan, y0);
plot3(y(:,1), y(:,3), y(:,5), 'linewidth', 2);
grid on
xlabel('x'); ylabel('y'); zlabel('z');
title("charged_particle")