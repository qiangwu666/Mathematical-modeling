%% ��Ԫ���庯�����Ż�ʵ��
% Ŀ�꺯����2άDe Jong������
% f(x,y)=x^2+y^2

%% Ŀ�꺯��
fxy=@(x,y)x.^2+y.^2;

%% �㷨����
population=40;  %��Ⱥ������
generation=250;  %����Ŵ�����
nvar=2;  %����ά��
len=40;  %Ⱦɫ�峤�ȣ�������λ����
gap=0.9;  %����
Pc=0.7;  %�������
Pm=NaN;  %�������ȱʡ

trace=zeros(2,generation);  %Ѱ�Ž������
FieldD=...  %����������������bs2rv�Ĳ�����
    [20,20;...     %x1��x2�ֱ���20λ�����Ʊ���
    -512,-512;...  %lower bounds
    512,512;...    %upper bounds
    1,1;...        %��׼�����Ʊ���    
    0,0;...        %���Կ̶�
    1,1;...        %�����±߽�
    1,1];          %�����ϱ߽�
gen=0;  %����������

%% ��ʼ��Ⱥ
Chrom=crtbp(population,len);  %������Ⱥ
val=bs2rv(Chrom,FieldD);  %ת����ʮ����
ObjV=fxy(val(:,1),val(:,2));  %��ʼ��Ⱥ��Ӧ��Ŀ�꺯��ֵ

%% ��Ⱥ�����������������Ž�
while gen<generation
    FitnV=ranking(ObjV);  %��Ӧ��
    NewChrom=select('sus',Chrom,FitnV,gap);  %ѡ������
    NewChrom=recombin('xovsp',NewChrom,Pc);  %���㽻������
    NewChrom=mutate('mut',NewChrom,[],Pm);      %��������
    val=bs2rv(NewChrom,FieldD);
    ObjVNew=fxy(val(:,1),val(:,2));
    [Chrom,ObjV]=reins(Chrom,NewChrom,1,[1,1],ObjV,ObjVNew);  %�ز����Ӵ���Ⱥ
    val=bs2rv(Chrom,FieldD);
    gen=gen+1;
    %�㷨���ܸ���
    trace(1,gen)=min(ObjV);  
    trace(2,gen)=sum(ObjV)/length(ObjV);
end

%% ���
%������Ⱥ�ķֲ�
x=-512:20:512; y=x;
[X,Y]=meshgrid(x,y);
Z=fxy(X,Y);
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
[Y,I]=min(ObjV);
disp(['min=' num2str(Y)]);
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