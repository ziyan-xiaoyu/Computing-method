function y0 = liuziyan_3_3_Piece_Lagrange(x0,n)
%Lagrange�ֶ����Բ�ֵ������N�ǷֶεĶ�����ÿ�ξ����Բ�ֵ��ȡ������ֵ��
%ֻ���������ÿ����1000����
for i=1:1001
    x(i)=-5+(i-1)*0.01;
    y(i)=lagrange(x(i),n);
    if x0 == x(i)
       y0 = y(i);
    end
end
plot(x,y)
hold on
grid on	%���������
xlabel('x��');
ylabel('y��');

%����Ϊ��ֵ����ʽ����
function y1=lagrange(x,n)
H = 10/n;%ÿ�εĳ���
h = H/1;%ÿ����ÿ���ĳ���
y1 = 0;
N = 1;
k = floor((x-(-5))/H)+1;%�жϵ�ǰ��X���ڵڼ���
for i=1:2
    for j=1:2
        if j==i
           N = 1*N;
        else
           N = N*(x-(-5+(k-1)*H+(j-1)*h))/((i-j)*h);%����
        end
     end
     y1 = y1+N*(1/(1+(-5+(k-1)*H+(i-1)*h)^2));%����
     N = 1;
end

