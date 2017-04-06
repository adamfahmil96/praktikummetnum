f = input('Masukan bentuk persamaan f(x) = ');
f_asli = sym (f)
f_turunan = diff(f_asli,'x')
