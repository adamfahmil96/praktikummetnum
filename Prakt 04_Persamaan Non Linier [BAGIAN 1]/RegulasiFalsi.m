function m = RegulasiFalsi (f, a, b, n, J)
format long
fa = f(a);
fb = f(b);
if (fa*fb > 0.0)
    error('TIdak ada nilai akar')
end
fprintf ('Iter     a           b         m         fa         fb         abs(y)\n');
for i = 1:n
    m = (fb*a - fa*b)/(fb - fa);
    y = f(m);
    fprintf('%3.0f %10.6f %10.6f',i,a,b);
    fprintf('%10.6f %10.6f %10.6f %12.3e\n',m,fa,fb,abs(y));
    if (abs(y) <= J)
        break;
    end
    if (fa*y < 0)
        b = m;
    else
        a = m;
    end
end