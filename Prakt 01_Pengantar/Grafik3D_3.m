x=-3:0.25:3;
y=-3:0.25:3;
[X,Y]=meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+Y.^2)).*cos(0.5*Y).*sin(X);
contour3(X,Y,Z,15)
xlabel('x'); ylabel('y')
zlabel('z')