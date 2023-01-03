function y0 = liuziyan_3_3_Piece_Lagrange(x0,n)
%Lagrange分段线性插值函数，N是分段的段数，每段均线性插值，取两个插值点
%只输入阶数，每条线1000个点
for i=1:1001
    x(i)=-5+(i-1)*0.01;
    y(i)=lagrange(x(i),n);
    if x0 == x(i)
       y0 = y(i);
    end
end
plot(x,y)
hold on
grid on	%添加网格线
xlabel('x轴');
ylabel('y轴');

%以下为插值多项式计算
function y1=lagrange(x,n)
H = 10/n;%每段的长度
h = H/1;%每段中每步的长度
y1 = 0;
N = 1;
k = floor((x-(-5))/H)+1;%判断当前的X属于第几段
for i=1:2
    for j=1:2
        if j==i
           N = 1*N;
        else
           N = N*(x-(-5+(k-1)*H+(j-1)*h))/((i-j)*h);%迭乘
        end
     end
     y1 = y1+N*(1/(1+(-5+(k-1)*H+(i-1)*h)^2));%迭加
     N = 1;
end

