function [ x,y,Ex,En,He ] = cloud_transform( y0,N )
%�˺�������������������ģ���������������ݸ��������������µ��Ƶ�
%�÷�
%[x,y]=cloud_transform(y0,N)  ����N���µ��Ƶ�
%[x,y,Ex,En,He] = cloud_transform(y0,N)  ������������������������N���µ��Ƶ�
%����˵��
%y0������������ֵ��yΪ����
%N���������Ƶεĸ���

Ex=mean(y0);
En=mean(abs(y0-Ex)).*sqrt(pi./2);
He=sqrt(var(y0)-En^2);

x=zeros(1,N);
y=x;
for k=1:N
    Enn=randn(1).*He+En;
    x(k)=randn(1).*Enn+Ex;
    y(k)=exp(-(x(k)-Ex).^2./(2.*Enn.^2));
end

end

