%% �����������(RBF)ʵ��
clc;clear all;
%% ԭʼ����
p=xlsread('sample.xlsx','B2:D17');  %��������
p=p';
t=xlsread('sample.xlsx','E2:F17');  %����Ŀ�����
t=t';

%% ��һ������
[pn,ps]=mapminmax(p);
[tn,ts]=mapminmax(t);

%% ����RBF������
net=newrb(pn,tn);

%% ��ѵ����ϵ��������ԭʼ���ݽ��з���
an=sim(net,pn);
%����һ����ԭ����
a=mapminmax('reverse',an,ts);

%% ��ѵ����ϵ�������������ݽ��з���
p_new=xlsread('sample.xlsx','B18:D21');  p_new=p_new';
pn_new=mapminmax('apply',p_new,ps);  %��������ͬ�Ĺ����һ������
an_new=sim(net,pn_new);
a_new=mapminmax('reverse',an_new,ts);
a_new_theory=xlsread('sample.xlsx','E18:F21');  %���۽��
a_new_theory=a_new_theory';
error=norm(a_new-a_new_theory);
disp(['Ԥ����' num2str(error)]);