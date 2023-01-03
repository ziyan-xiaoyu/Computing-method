function [ x,k ] = liuziyan_4_2_Diedai( f,x0,emg )
% 用迭代法求解线性方程
% f——线性方程左端函数；x0——迭代初值（此方法为局部收敛，初值选取要恰当）
% emg——精度指标；k——迭代次数
x(1) = x0;
k = 1;
x(k+1) = feval(f,x(k));
k = k+1;
x(k) = feval(f,x(k-1));
while abs(x(k)-x(k-1)) > emg     %控制精度
    k = k+1; 
    x(k) = feval(f,x(k-1));
end

