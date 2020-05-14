t = 0:0.01:2*pi;
a1 = 0.5.*(t-pi);
for m = [-16:2:10]*pi/180
    axis([0 7 -1 1 -0.4 0.4]);
    grid on;
    view(12, 18);
    hold on;        % Reserve current drawing
    comet3(cos(m).*t, 2*sin(m).*cos(a1).^2, 2*sin(m).*cos(a1).*sin(a1));
    plot3(cos(m).*t, 2*sin(m).*cos(a1).^2, 2*sin(m).*cos(a1).*sin(a1));
end
xlabel('x'); ylabel('y'); zlabel('z');
title("magnetic_focus")