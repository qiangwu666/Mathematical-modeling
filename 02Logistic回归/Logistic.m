%% 数据准备
X0=xlsread('sample.xlsx','B2:D21');
Y0=xlsread('sample.xlsx','A2:A21'); 

%% 映射处理P->pi
s=size(X0,1);
YY=zeros(s,1);
for k=1:s
	if Y0(k)<=0.5
		YY(k)=0.25;
	else
		YY(k)=0.75;
	end
end 

%% 计算概率函数pi的回归方程
X=[ones(s,1),X0];
Y=log(YY./(1-YY));
[b,bint,r,rint]=regress(Y,X);
rcoplot(r,rint); %残差图

%% 根据回归方程对未知项目做出评价
PiX=@(x1,x2,x3)exp(b(1)+b(2)*x1+b(3)*x2+b(4)*x3)/(1+exp(b(1)+b(2)*x1+b(3)*x2+b(4)*x3));
X1=xlsread('sample.xlsx','B22:D26');
s1=size(X1,1);
P=zeros(s1,1);
Y1=P;
for k=1:s1
	Y1(k)=PiX(X1(k,1),X1(k,2),X1(k,3));
	if Y1(k)<=0.5
		P(k)=0;
	else
		P(k)=1;
	end
end

disp(['评价结果: ' num2str(P')])