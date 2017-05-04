function [t,y] = Metode_RK4 (fname, t0, tn, y0, n)
h = (tn - t0)/n;
t = (t0 + h : h : tn);
k1 = h*feval(fname, t0, y0);
k2 = h*feval(fname, t0 + h/2, y0+k1/2);
k3 = h*feval(fname, t0 + h/2, y0+k2/2);
k4 = h*feval(fname, t0 + h, y0+k3);
y(1) = y0 + k1/6 + k2/3 + k3/3 + k4/6;
for i = 1:n-1,
    k1 = h*feval(fname, t(i), y(i));
    k2 = h*feval(fname, t(i) + h/2, y(i)+k1/2);
    k3 = h*feval(fname, t(i) + h/2, y(i)+k2/2);
    k4 = h*feval(fname, t(i) + h, y(i)+k3);
    y(i+1) = y(i) + k1/6 + k2/3 + k3/3 + k4/6;
end
t = [t0 t]
y = [y0 y]