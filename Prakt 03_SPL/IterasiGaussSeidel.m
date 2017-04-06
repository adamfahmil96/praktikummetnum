function x = IterasiGaussSeidel(A,b,tol,max_iter)
[n m] = size(A);
for i = 1:n,
    if (i == 1)
        x(i) = b(i)/A(i,i);
    else
        x(i) = 0;
    end
end
x = x';
C = -A;
for i = 1:n,
    C(i,i) = 0.0;
    C(i,:) = C(i,:)/A(i,i);
    d(i,1) = x(i);
end
i = 1;
while (i <= max_iter)
    xlama = x;
    for j = 1 : n,
        x(j) = C(j,:)*x + d(j);
    end
    if (norm(xlama - x) <= tol)
        disp ('Gauss Seidel method konverge');
        return
    end
    disp([i x']);
    i = i + 1;
end
disp ('Gauss Seidel method not konverge');