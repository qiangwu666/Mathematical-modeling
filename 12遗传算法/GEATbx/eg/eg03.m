%% ��Ԫ���庯�����Ż�ʵ��
% Ŀ�꺯����10άDe Jong������

%% Ŀ�꺯��
f=@(a,b,c,d,e,f,g,h,i,j)...
    a.^2+b.^2+c.^2+d.^2+e.^2+...
    f.^2+g.^2+h.^2+i.^2+j.^2;

%% �㷨����
population=40;  %��Ⱥ������
generation=500;  %����Ŵ�����
nvar=10;  %����ά��
len=20*nvar;  %Ⱦɫ�峤�ȣ�������λ����
gap=0.9;  %����
Pc=0.7;  %�������
Pm=NaN;  %�������ȱʡ

trace=zeros(2,generation);  %Ѱ�Ž������
FieldD=...  %����������������bs2rv�Ĳ�����
    [repmat(20,1,nvar);...     %x1��x2�ֱ���20λ�����Ʊ���
    repmat(-512,1,nvar);...  %lower bounds
    repmat(512,1,nvar);...    %upper bounds
    ones(1,nvar);...        %��׼�����Ʊ���    
    zeros(1,nvar);...        %���Կ̶�
    ones(1,nvar);...        %�����±߽�
    ones(1,nvar)];          %�����ϱ߽�
gen=0;  %����������

%% ��ʼ��Ⱥ
Chrom=crtbp(population,len);  %������Ⱥ
val=bs2rv(Chrom,FieldD);  %ת����ʮ����
ObjV=f(val(:,1),val(:,2),val(:,3),val(:,4),val(:,5),...
    val(:,6),val(:,7),val(:,8),val(:,9),val(:,10));  %��ʼ��Ⱥ��Ӧ��Ŀ�꺯��ֵ

%% ��Ⱥ�����������������Ž�
while gen<generation
    FitnV=ranking(ObjV);  %��Ӧ��
    NewChrom=select('sus',Chrom,FitnV,gap);  %ѡ������
    NewChrom=recombin('xovsp',NewChrom,Pc);  %���㽻������
    NewChrom=mutate('mut',NewChrom,[],Pm);      %��������
    val=bs2rv(NewChrom,FieldD);
    ObjVNew=f(val(:,1),val(:,2),val(:,3),val(:,4),val(:,5),...
        val(:,6),val(:,7),val(:,8),val(:,9),val(:,10));
    [Chrom,ObjV]=reins(Chrom,NewChrom,1,[1,1],ObjV,ObjVNew);  %�ز����Ӵ���Ⱥ
    val=bs2rv(Chrom,FieldD);
    gen=gen+1;
    %�㷨���ܸ���
    trace(1,gen)=min(ObjV);  
    trace(2,gen)=sum(ObjV)/length(ObjV);
end

%% ���
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