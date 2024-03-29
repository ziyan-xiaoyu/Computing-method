function x = liuziyan_6_4_threedia( a,b,c,f )
% 用追赶法解三对角线性方程组Ax=f；
% A——三对角阵；
% a——矩阵A的下对角线元素a(1)=0；
% b——矩阵A的对角线元素;
% c——矩阵A的上对角线元素c(N)=0；
% f——方程组的右端向量
N = length(f);
x = zeros(1,N);y = zeros(1,N);
d = zeros(1,N);u = zeros(1,N);
% 预处理
d(1) = b(1);
for i = 1:N-1
    u(i) = c(i)/d(i);
    d(i+1) = b(i+1) - a(i+1)*u(i);
end
% 追的过程
y(1) = f(1)/d(1);
for i = 2:N
    y(i) = (f(i)-a(i)*y(i-1))/d(i);
end
% 赶的过程
x(N) = y(N);
for i = N-1:-1:1
    x(i) = y(i) - u(i)*x(i+1);
end