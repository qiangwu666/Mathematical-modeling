%����ָ��ƽ����matlab����
close all
clear,clc

%   ͳ������ ʵ��ֵ
arr = [143 152 161 139 137 174 142 141 162 180 164 171 206 193 207 218 229 225 204 227 223 242 239 266]';

[m,nn]=size(arr);  
alpha = 0.15;   % ƽ�������ķ�ΧΪ[0,1]

%   1��ָ��ƽ��
s1 = zeros(m,1);
s1(1,1) = arr(1,1);
for i=2:m
    s1(i) = alpha*arr(i,1)+(1-alpha)*s1(i-1);
end
sx1 = s1;

%   2��ָ��ƽ��
s2 = zeros(m,1);
s2(1,1) = arr(1,1);
for i=2:m
    s2(i) = alpha*s1(i,1)+(1-alpha)*s2(i-1);
end
sx2 = s2;

%   3��ָ��ƽ��
s3 = zeros(m,1);
s3(1,1) = arr(1,1);
for i=2:m
    s3(i) = alpha*s2(i,1)+(1-alpha)*s3(i-1);
end
sx3 = s3;

%   ������������еĲ���
a = zeros(m,1);
b = zeros(m,1);
c = zeros(m,1);
beta=alpha/(2*(1-alpha)*(1-alpha));
a = 3*sx1-3*sx2+sx3;
b = beta*((6-5*alpha)*sx1-2*(5-4*alpha)*sx2+(4-3*alpha)*sx3);
c = beta*alpha*(sx1-2*sx2+sx3);

%   ��������ģ�� a+b*t+c*t*t
t = 1;   %   
sf = zeros(m,1);
% sf(1,1) = arr(1,1);
sf = a+b*t+c*t*t    %  Ԥ��