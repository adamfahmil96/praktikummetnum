function [t,y] = Metode_Euler (f, n, a, b, y0)
h = (b-a)/n;
t = [a]; 
y = [y0];
for k = 2:n+1,
    t = [t;a+(k-1)*h];
    y = [y;y(k-1)+h*f(t(k-1),y(k-1))];
end