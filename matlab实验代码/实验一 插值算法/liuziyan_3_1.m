function [y0, N] = liuziyan_3_1(X, Y, x0)
%Lagrange��ֵ�㷨����
%X,Y����֪�Ĳ�ֵ�����꣬x0�ǲ�ֵ�㣬y0��Lagrenge����ʽ��x0����ֵ��N��Language��ֵ������Ȩϵ��
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

