function ydot = charged_particle_fun(t, y)
global B E q m
ydot = [y(2); q*B*y(4); y(4); q*E/m-q*B*y(2)/m; y(6); 0];
end