h = 0.001;       % step size
X = -10:0.001:5;    % domain
f = X.^3 - 3*X - 20;      % range
Y = diff(f)/h;   % first derivative
%Z = diff(Y);   % second derivative
%plot(X(:,1:length(Y)),Y,'red',X,f,'blue', X(:,1:length(Z)),Z,'black')
x1 = -4 : 0.01 : 4;
y1 = 0.*x1;
y2 = -4 : 0.01 : 4;
x2 = 0.*y2;
plot (X, f , X(:,1:length(Y)),Y,'red', x1, y1, 'red', x2, y2,'red');
axis ([-5 5 -5 5]);