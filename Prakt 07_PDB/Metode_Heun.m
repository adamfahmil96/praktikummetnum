function [t,y] = Metode_Heun (f, a, b, ya, n)
h = (b-a)/n;
halfh = h/2;
y(1,:) = ya;
t(1) = a;
for i=1:n
    t(i+1) = t(i) + h;
    g = f(t(i), y(i,:));
    z = y(1,:) + h*g;
    y(i+1,:) = y(i,:) + halfh*(g+f(t(i+1),z));
end
disp[t y];