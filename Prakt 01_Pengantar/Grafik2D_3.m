x = 0:0.01:2*pi;
y = -10*sin(2*x) - 8*cos(3*x); 
z = 8*sin(6*x).*-6.*cos(10*x); % Persamaan Gelombang Harmonik
plot(x,y,x,z);