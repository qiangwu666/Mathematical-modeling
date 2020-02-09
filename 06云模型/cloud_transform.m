function [ x,y,Ex,En,He ] = cloud_transform( y0,N )
%此函数用来计算样本的云模型数字特征并根据该数字特征产生新的云滴
%用法
%[x,y]=cloud_transform(y0,N)  产生N个新的云滴
%[x,y,Ex,En,He] = cloud_transform(y0,N)  计算样本的数字特征并产生N个新的云滴
%参数说明
%y0：隶属度样本值；y为向量
%N：产生新云滴的个数

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

