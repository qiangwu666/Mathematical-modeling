%% ��һԪ�����Ż�ʵ��
% ���˺������ֵ��f(x)=xsin(10pi*x+2),x:[-1.2]

%% Ŀ�꺯��
fx=@(x)x.*sin(10*pi*x)+2;

%% �㷨����
population=40;  %��Ⱥ������
generation=30;  %����Ŵ�����
len=20;  %Ⱦɫ�峤�ȣ�������λ����
gap=0.9;  %����
Pc=0.7;  %�������
Pm=NaN;  %�������ȱʡ

trace=zeros(2,generation);  %Ѱ�Ž������
FieldD=[20;-1;2;1;0;1;1];  %����������������bs2rv�Ĳ�����
gen=0;  %����������

%% ��ʼ��Ⱥ
Chrom=crtbp(population,len);  %������Ⱥ
val=bs2rv(Chrom,FieldD);  %ת����ʮ����
ObjV=fx(val);  %��ʼ��Ⱥ��Ӧ��Ŀ�꺯��ֵ

%% ��Ⱥ�����������������Ž�
while gen<generation
    FitnV=ranking(-ObjV);  %��Ӧ��
    NewChrom=select('sus',Chrom,FitnV,gap);  %ѡ������
    NewChrom=recombin('xovsp',NewChrom,Pc);  %���㽻������
    NewChrom=mutate('mut',NewChrom,[],Pm);      %��������
    val=bs2rv(NewChrom,FieldD);
    ObjVNew=fx(val);
    [Chrom,ObjV]=reins(Chrom,NewChrom,1,[1,1],ObjV,ObjVNew);  %�ز����Ӵ���Ⱥ
    val=bs2rv(Chrom,FieldD);
    gen=gen+1;
    %�㷨���ܸ���
    trace(1,gen)=max(ObjV);  
    trace(2,gen)=sum(ObjV)/length(ObjV);
end

%% ���
%������Ⱥ�ķֲ�
x=-1:0.01:2;
y=fx(x);
figure(1)
plot(x,y,'LineWidth',2); grid on
axis([-1 2 min(y)-0.5 max(y)+0.5]);
hold on;
plot(val,ObjV,'r*');  
hold off
legend('Ŀ�꺯��ͼ��','������Ⱥ�ֲ�','Location','Best');
title('����ͼ��������Ⱥ�ֲ�')
%���Ž�
[Y,I]=max(ObjV);
disp(['max=' num2str(Y)]);
disp(['xVal=' num2str(val(I))]);
%�㷨���ܸ���
figure(2)
plot(trace(1,:),'-*','LineWidth',1);
hold on 
plot(trace(2,:)','-*','LineWidth',1);
hold off
legend('���Ž�ı仯','��Ⱥ��ֵ�ı仯','Location','Best');
grid on
xlabel('��������'); ylabel('����ֵ');
title('�㷨���ܸ���')