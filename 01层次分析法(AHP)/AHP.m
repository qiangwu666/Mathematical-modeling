%% ����
clc
clear all

%% ����ɶԱȽϾ���
A=input('������ɶԱȽϾ���A=');

%% һ���Լ���
[~,n]=size(A);
[v,d]=eig(A);
r=max(diag(d));
CI=(r-n)/(n-1);
RI=[0 0 0.58 0.90 1.12 1.24 1.32 1.41 1.45 1.49 1.52 1.54 1.56 1.58 1.59];
CR=CI/RI(n);
if CR<0.1
    CR_Result='ͨ��һ���Լ���';
else
    RC_Result='δͨ��һ���Լ���';
end

%% ����Ȩ����
w=v(:,1)/sum(v(:,1));
w=w';

%% ������
disp(['һ����ָ�꣺CI=' num2str(CI)]);
disp(['һ���Ա��ʣ�CR=' num2str(CR)]);
disp(['һ���Լ�����:' CR_Result]);
disp(['����ֵ��' num2str(r)]);
disp(['��������' num2str(w)]);
