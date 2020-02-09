%% 根据输入的样本产生新的云滴并作图以供分析

N=3000;
y0=xlsread('sample.xlsx','A1:J4');
C=class(y0);
if  strcmp(C,'cell')==1
    y0=xlsread(y0{1},y0{2});
end
s=size(y0,1);
Mx=zeros(1,s);mx=Mx;
My=Mx;my=Mx;
x=zeros(s,N);y=x;
for k=1:s
    [x(k,:),y(k,:)]=cloud_transform(y0(k,:),N);
    Mx(k)=max(x(k,:));mx(k)=min(x(k,:));
    My(k)=max(y(k,:));my(k)=min(y(k,:));
end
Mx=max(Mx);mx=min(mx);
My=max(My);my=min(my);
for k=1:s
    subplot(s/2,2,k)
    plot(x(k,:),y(k,:),'r.')
    axis([mx Mx my My])
end