%% ����׼��
X0=xlsread('sample.xlsx','B2:D21');
Y0=xlsread('sample.xlsx','A2:A21'); 

%% ӳ�䴦��P->pi
s=size(X0,1);
YY=zeros(s,1);
for k=1:s
	if Y0(k)<=0.5
		YY(k)=0.25;
	else
		YY(k)=0.75;
	end
end 

%% ������ʺ���pi�Ļع鷽��
X=[ones(s,1),X0];
Y=log(YY./(1-YY));
[b,bint,r,rint]=regress(Y,X);
rcoplot(r,rint); %�в�ͼ

%% ���ݻع鷽�̶�δ֪��Ŀ��������
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

disp(['���۽��: ' num2str(P')])