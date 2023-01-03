function [ x,k ] = liuziyan_4_2_Aitken( f,x0,emg )
% 用Aitken加速法求解方程
% f——线性方程左端函数；x0——迭代初值（此方法为局部收敛，初值选取要恰当）
% emg——精度指标；k——迭代次数
x(1) = x0;
k = 1;
x(k+1) = feval(f,x(k));
k = k+1;
x(k) = feval(f,x(k-1));
while abs(x(k)-x(k-1)) > emg     %控制精度
    k = k+1; 
    x1 = feval(f,x(k-1));
    x2 = feval(f,x1);
    x(k) = x2 - (x2-x1)^2/(x2-2*x1+x(k-1));
end

