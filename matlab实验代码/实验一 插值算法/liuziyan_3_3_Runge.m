function y0 = liuziyan_3_3_Runge(n)
%Lagrange��ֵ��Runge����
%��ֵ�ڵ�ѡ��ȡֵ��Χ�ϵĵȾ�ڵ�
%ֻ���������ÿ����1000����
for i=1:1001
    x(i)=-5+(i-1)*0.01;
    y(i)=lagrange(x(i),n);
end
plot(x,y)

%����Ϊ��ֵ����ʽ����
function y1=lagrange(x,n)
h = 10/n;
y1 = 0;
N = 1;
for i=1:(n+1)
    for j=1:(n+1)
        if j==i
            N = 1*N;
        else
            N = N*(x-(-5+(j-1)*h))/((i-j)*h);%����
        end
    end
    y1 = y1+N*(1/(1+(-5+(i-1)*h)^2));%����
    N = 1;
end

