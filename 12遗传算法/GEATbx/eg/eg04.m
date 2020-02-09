%% ��Ԫ��庯�����Ż�ʵ��
% Ŀ�꺯����f(x,y)=20+x1*sin(4pi*x1)+x2*sin(4pi*x2)  
% s.t. x1:[-3.0��12.1]  x2:[4.1,5.8]

%% Ŀ�꺯��
f=@(x,y)20.0+x.*sin(4*pi*x)+y.*sin(4*pi*y);

%% �㷨����
population=40;  %��Ⱥ������
generation=150;  %����Ŵ�����
nvar=2;  %����ά��
len=25*nvar;  %Ⱦɫ�峤�ȣ�������λ����
gap=0.9;  %����
Pc=0.7;  %�������
Pm=NaN;  %�������ȱʡ

trace=zeros(2,generation);  %Ѱ�Ž������
FieldD=...  %����������������bs2rv�Ĳ�����
    [repmat(25,1,nvar);...     %x1��x2�ֱ���25λ�����Ʊ���
    -3,4.1;...              %lower bounds
    12.1,5.8;...            %upper bounds
    ones(1,nvar);...        %��׼�����Ʊ���    
    zeros(1,nvar);...       %���Կ̶�
    ones(1,nvar);...        %�����±߽�
    ones(1,nvar)];          %�����ϱ߽�
gen=0;  %����������

%% ��ʼ��Ⱥ
Chrom=crtbp(population,len);  %������Ⱥ
val=bs2rv(Chrom,FieldD);  %ת����ʮ����
ObjV=f(val(:,1),val(:,2)); %��ʼ��Ⱥ��Ӧ��Ŀ�꺯��ֵ

%% ��Ⱥ�����������������Ž�
while gen<generation
    FitnV=ranking(-ObjV);  %��Ӧ��
    NewChrom=select('sus',Chrom,FitnV,gap);  %ѡ������
    NewChrom=recombin('xovsp',NewChrom,Pc);  %���㽻������
    NewChrom=mutate('mut',NewChrom,[],Pm);      %��������
    val=bs2rv(NewChrom,FieldD);
    ObjVNew=f(val(:,1),val(:,2));
    [Chrom,ObjV]=reins(Chrom,NewChrom,1,[1,1],ObjV,ObjVNew);  %�ز����Ӵ���Ⱥ
    val=bs2rv(Chrom,FieldD);
    gen=gen+1;
    %�㷨���ܸ���
    trace(1,gen)=max(ObjV);  
    trace(2,gen)=sum(ObjV)/length(ObjV);
end

%% ���
%������Ⱥ�ķֲ�
 x=-3:0.01:12.1; y=4.1:0.01:5.8;
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
figure(1)
mesh(X,Y,Z);
shading interp
colormap summer
hold on;
plot3(val(:,1),val(:,2),ObjV,'r*');  
hold off
hidden off
legend('Ŀ�꺯��ͼ��','������Ⱥ�ֲ�','Location','Best');
title('����ͼ��������Ⱥ�ֲ�')
%���Ž�
[Y,I]=max(ObjV);
disp(['max=' num2str(Y)]);
disp(['xVal=' num2str(val(I,1))]);
disp(['xVal=' num2str(val(I,2))]);
%�㷨���ܸ���
figure(2)
plot(trace(1,:),'-*','LineWidth',1);
hold on 
plot(trace(2,:)','-o','LineWidth',1);
hold off
legend('���Ž�ı仯','��Ⱥ��ֵ�ı仯','Location','Best');
grid on
title('�㷨���ܸ���')
xlabel('��������'); ylabel('����ֵ');