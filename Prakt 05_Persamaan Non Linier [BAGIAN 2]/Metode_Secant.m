function x = Metode_Secant (f, x0, x1, n, tol)
fa = f(x0);
fb = f(x1);
i = 0;
while (abs (x0 - x1) > tol)
    fa = f(x0);
    fb = f(x1);
    if (fa == 0 || i == n)
        return
    end
    x = x1 - fb.*(x1-x0)./(fb-fa);
    disp([i x fa])
    x0=x1;
    x1=x;
    i=i+1;
end