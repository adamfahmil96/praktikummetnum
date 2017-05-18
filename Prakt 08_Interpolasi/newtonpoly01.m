function newtonpoly01;

close all;
clear all;
clc;

fy = [ ...
    2.0000    0.50;...
    4.0000    0.25;...
    5.0000    0.20;...
     8.0000    0.125...
    ];
 
x = fy(:,1); y = fy(:,2);
n = length(x);
D = zeros(n);
D(:,1) = y(1:n);
 
for (j=2:n)
    for (k=j:n)
        D(k,j) = (D(k,j-1) - D(k-1,j-1))/(x(k) - x(k-j+1)); 
            end;
end;
 
D

% Sekarang akan dihitung sebuah yy=f(xx) dengan rumus polinomial Newton tersebut.
xx = 0:0.2:10;
yy = D(1,1);
 
for (k=2:n)
    yy = yy+D(k,k).*plinom(xx,x,k);
end;
 
plot(x,y,'-wo', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor',[.49 1 .63], 'MarkerSize',12); hold on;
plot(xx,yy,'-bs','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',[.1 .1 .5],'MarkerSize',6); grid on;
 
 function ypol = plinom(xx,x,k)
        has = 1; 
        for (i=2:k) 
            has = has.*(xx - x(i-1));
        end;
        ypol = has;
 end;
 
end 