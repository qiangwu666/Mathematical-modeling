%% ǰ����(BP)������ʵ��
clc;clear all;
%% ԭʼ����
pn=[556,540,517,485];
tn=[626,630,626,608];

%% ��һ������


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


%% ��ѵ����ϵ�������������ݽ��з���
pn_new=503;
an_new=sim(net,pn_new);
disp(an_new);