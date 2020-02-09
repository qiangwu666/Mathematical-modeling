%% ˵��
%�����ɷַ���������ʮ�����ҵ���ۺ�ʵ��
%��ҵ�ĸ���������ݼ�Excel�ļ�sample

%% ��ȡ����
clc;clear all;
A=xlsread('sample.xlsx','B2:I16');

%% ���ݱ�׼������
a=size(A,1);
b=size(A,2);
SA=zeros(a,b);
for k=1:b
    SA(:,k)=(A(:,k)-mean(A(:,k)))/std(A(:,k));
end;

%% ���ϵ������
CM=corrcoef(SA);

%% ���ϵ�����������ֵ����������
[V,D]=eig(CM);
DS=flipud(diag(D));    %����ֵ��������

%% �����ʺ��ۼƹ�����
ds=zeros(b,2);
for k=1:b
    ds(k,1)=DS(k,1)/sum((DS(:,1)));    %������
    ds(k,2)=sum(DS(1:k,1))/sum(DS(:,1));    %�ۼƹ�����
end
DS=[DS,ds];

%% ѡȡ���ɷ�
T=0.9;    %���ɷ���Ϣ������
for k=1:b
    if DS(k,3)>=T
        Com_num=k;
        break;
    end
end

%% ��ȡ���ɷֶ�Ӧ����������
PV=zeros(size(V,1),Com_num);
for k=1:Com_num
    PV(:,k)=V(:,b+1-k);
end

%% ����������۶�������ɷֵ÷�
new_score=SA*PV;    %���ɷֵ÷־���
total_score=zeros(a,2);    %�ܵ÷־���
for k=1:a
    total_score(k,1)=sum(new_score(k,:));
    total_score(k,2)=k;
end

%% ���۽������
result=[new_score,total_score];
result=sortrows(result,-4);    %���ܷ֣������У���������

%% ������
disp('���ϵ����������ֵ  ������  �ۼƹ�����')
disp(num2str(DS))
disp(['���ɷ���Ŀ��' num2str(Com_num)])
disp('���ɷֶ�Ӧ����������')
disp(num2str(PV))
disp('���ɷֵ÷֣����������ֽܷ������У�ǰ����Ϊ�������ɷֵĵ÷֣�������Ϊ��ҵ��ţ�')
disp(num2str(result))