function y0 = liuziyan_3_2_Neville(X, Y, x0)
%Neville逐步插值算法，逐列生成新的值，且每个新值为前一列相邻两元素间的运算
%X,Y是已知插值点的坐标点，x0是插值点，y0是多项式在x0处的值
m = length(X);
P = zeros(m, 1);
P1 = zeros(m, 1);
P = Y;
for i=1:m
    P1 = P;
    k = 1;
    for j = i+1:m
        k = k+1;
        P(j) = P1(j-1)+(P1(j)-P1(j-1))*(x0-X(k-1))/(X(j)-X(k-1));
    end
    if abs(P(m)-P(m-1)) < 10^-6;
        y0 = P(m);
        return;
    end
end
y0 = P(m);

