%% ǰ����(BP)������ʵ��
clc;clear all;
%% ԭʼ����
p=xlsread('sample.xlsx','B2:D17');  %��������
p=p';
t=xlsread('sample.xlsx','E2:F17');  %����Ŀ�����
t=t';

%% ��һ������
% [pn,ps]=mapminmax(p);
% [tn,ts]=mapminmax(t);

%% ����BP������
net=newff(pn,tn,[3 8 2],{'purelin','logsig','purelin'});
net.trainParam.show=10;  %10�ֻ���ʾһ�ν��
net.trainParam.lr=0.05;  %learninf rate
net.trainParam.epochs=5000;  %���ѵ������
net.trainParam.goal=6.5e-4;  %�������
% ��������������6�ε�����û�б仯��ѵ�������Զ���ֹ��ϵͳĬ�ϵģ�
% Ϊ���ó���������У�����������ȡ����������
net.divideFcn='';

%% ѵ������
[net,record]=train(net,pn,tn);

%% ��ѵ����ϵ��������ԭʼ���ݽ��з���
an=sim(net,pn);
%����һ����ԭ����
a=mapminmax('reverse',an,ts);
error=norm(a-t);
disp(['Ԥ�����' num2str(error)]);

%% ��ѵ����ϵ�������������ݽ��з���
p_new=[73.39 75.55
    3.9635 2.0975
    0.9880 1.0268];
pn_new=mapminmax('apply',p_new,ps);  %��������ͬ�Ĺ����һ������
an_new=sim(net,pn_new);
a_new=mapminmax('reverse',an_new,ts);