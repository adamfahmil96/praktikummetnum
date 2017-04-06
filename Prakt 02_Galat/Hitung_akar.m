% Menghitung nilai akar 2 secara eksak
A = sqrt(2);

% Menghitung nilai akar 2 dengan rumus 1
x=1;
e=1;
while e > 0.0001,
    y=x;
    x=(y+2/y)/2
    e=abs(x-y);
end
fprintf('%5.7f\n',x);
