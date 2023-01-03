function [ x,k ] = liuziyan_4_1_Newton( f,x0,emg )
% 用牛顿法求解方程的根
% f——线性方程左端函数；x0——迭代初值（此方法为局部收敛，初值选取要恰当）
% emg——精度指标；k——迭代次数
[f1,d1] = feval(f,x0);
k = 1;
x(1) = x0;
x(2) = x(1) - f1/d1;
while abs(f1) > emg     %控制精度
    k = k+1; 
    [f1,d1] = feval(f,x(k));
    x(k+1) = x(k) - f1/d1;
end

