function [y0, N] = liuziyan_3_1(X, Y, x0)
%Lagrange插值算法函数
%X,Y是已知的插值点坐标，x0是插值点，y0是Lagrenge多项式在x0处的值，N是Language插值函数的权系数
m = length(X);
N = zeros(m, 1);
y0 = 0;
for i=1:m
    N(i)=1;
    for j=1:m
        if j~=i
            N(i)=N(i)*(x0-X(j))/(X(i)-X(j));
        end
    end
    y0 = y0+Y(i)*N(i);
end

