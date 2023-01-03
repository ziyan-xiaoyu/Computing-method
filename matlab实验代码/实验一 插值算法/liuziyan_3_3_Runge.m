function y0 = liuziyan_3_3_Runge(n)
%Lagrange插值的Runge现象
%插值节点选择取值范围上的等距节点
%只输入阶数，每条线1000个点
for i=1:1001
    x(i)=-5+(i-1)*0.01;
    y(i)=lagrange(x(i),n);
end
plot(x,y)

%以下为插值多项式计算
function y1=lagrange(x,n)
h = 10/n;
y1 = 0;
N = 1;
for i=1:(n+1)
    for j=1:(n+1)
        if j==i
            N = 1*N;
        else
            N = N*(x-(-5+(j-1)*h))/((i-j)*h);%迭乘
        end
    end
    y1 = y1+N*(1/(1+(-5+(i-1)*h)^2));%迭加
    N = 1;
end

