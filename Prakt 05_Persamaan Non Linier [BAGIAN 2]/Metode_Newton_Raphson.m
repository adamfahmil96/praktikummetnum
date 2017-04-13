function y = Metode_Newton_Raphson (f, x0, n, tol)
f_asli = sym(f)
f_turunan = diff(f_asli,'x')
y = double(x0);
i = 0;
fa = subs (f_asli,y);
while (abs(fa) > tol)
    fa = subs (f_asli,y);
    fb = subs (f_turunan,y);
    if fa == 0 || i == n
        break
    end
    y = double (y - fa./fb);
    nilai_y = double(y);
    nilai_fa = double(fa);
    disp ([i nilai_y nilai_fa])
    i = i + 1;
end