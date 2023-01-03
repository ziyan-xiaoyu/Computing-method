function [ x,k ] = liuziyan_5_1_Jacobi( A,b,x0,N,emg )
% 用Jacobi迭代法求线性方程组Ax=b的解；
% x——用迭代法求得的线性方程组的近似解；k——迭代次数
% A——线性方程组的左端矩阵；b——右端向量；x0——迭代初始值；
% N——迭代次数上限，若迭代次数大于N则迭代失败；
% emg——控制精度；
n = length(A);
x1 = zeros(n,1);
x2 = zeros(n,1);
x1 = x0;
k = 0;
r = max(abs(b-A*x1));
while r > emg
    for i = 1:n
        sum = 0;
        for j = 1:n
            if i~=j
                sum = sum + A(i,j)*x1(j);
            end
        end
        x2(i) = (b(i)-sum)/A(i,i);
    end
    r = max(abs(x2-x1));
    x1 = x2;
    k = k+1;
    if k > N
        disp('迭代失败，返回');
        return;
    end
end
x = x1;

