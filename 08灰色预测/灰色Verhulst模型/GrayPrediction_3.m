%% ��ɫVerhulstģ��ͨ�ó���˵��
% ���ڻ�ɫVerhulstģ��
% 
% ��ģ������Ԥ����С�S�͡����ߡ�����S�͡��仯���ɵ�����
% 
% �����ܣ�
% ���������ԭʼ���ݼ������ɫģ�ͣ�������������±������Ӧ���Ԥ��ֵ
%
% ������ʾ��
%
% ��һ������������ֱ������ԭ���� $x^{(1)}$ ��ֵ����ֵ����������   
% Ҳ���Դ�Excel�ļ��ж�ȡ���ݣ���ʱ����ֵΪ�ļ����Ͷ�ȡ��Χ�ַ�����ɵ�Ԫ�����飬���磺{'sample.xlsx','A1:G1'}
%
% �ڶ���������Ϊ�����±���ɵ���������
% ���򽫰Ѷ�Ӧ���Ԥ��ֵ���
% 
% ������������ָʾ����ģ�����õķ�������ȱʡ����Ϊ�գ�
%
% ��������Ϊ�ַ�����C��,'P','Q'�е�һ���������ֱ����ļ��鷽��Ϊ������ȼ��鷨��С�����ʼ��鷨����������鷨��
%
% ��������Ϊ���ʱ��Ӧд���ַ����������ʽ�������磺['C','Q']��
% 
% ���ĸ�������ֻ����0��1��Ҳ����ȱʡ����Ϊ�ա�
% ��1������Ҫ����ԭʼ���ݺ�Ԥ������ͼ�񲢷���ͼ�ξ��handle��
% ��0����ͼ

function [ predict,handle ] = GrayPrediction_3 ( x1,n0,OPTIONS,PLOTorNOT )

%% ��������������
if nargin==2
    O=0;P=0;
elseif nargin==3
    O=1;P=0;
elseif nargin==4
    O=1;P=1;
end

%% ������ȡԭʼ���� $x^{(1)}$
if  iscell(x1)==1
    x1=xlsread(x1{1},x1{2});
end
n=length(x1);

%% �ۼ�����IAGO��
% �ۼ���ʽΪ $x^{(0)}(k)=x^{(1)}(k)-x^{(1)}(k-1),(k=2,3,4,...,n)$
x0=[x1(1),diff(x1)];

%% ����ԭʼ���н��ھ�ֵ����
% ���㹫ʽΪ $z^{(1)}(k)=1/2(x^{(1)}(k)+x^{(1)}(k-1)),(k=2,3,4,...,n)$
z1=zeros(1,n-1);
for k=2:n
    z1(k)=0.5*(x1(k)+x1(k-1));
end
%% ����С���˷��������
% ���㹫ʽΪ $\bf\it{u}=(\it{a},\it{b})^T=(B^TB)^{-1}B^TY$�� $B,T$ �ĺ���μ�������롣
B=[-z1(2:n)',z1(2:n)'.^2];
Y=x0(2:n)';
u=((B'*B)\B')*Y;
%% 
% �����ͽ�����Verhulstģ�Ͱ׻����� $dx^{(1)}/dk+ax^{(1)}=b(x^{(1)})^2$
%
% ����ϵ��a=u(1),b=u(2)��

%% �׻����̵Ľ�
% ע��
%
% �׻����̵����۽�Ϊ��
% $x^{(1)}(k+1)=ax^{(0)}(1)/[bx^{(0)}(1)+(a-bx^{(0)}(1))e^{ak}]$ 
% 
% Ϊ�˷�����沽�����ģ�ͽ���Ԥ�⣬д��������������ʽ��
forcast=@(k)(u(1)*x0(1))./(u(2)*x0(1)+(u(1)-u(2)*x0(1))*exp(u(1)*k));

%% ����ģ�ͽ���Ԥ��
predict=forcast(n0-1);
if isempty(find(n0,1))==0    %������±�����1
     predict(find(n0,1))=x1(1);
end

%% ģ�ͼ��
if O==1
    r=forcast((1:n)-1);
    test=[x1(1),r(2:n)];
    epsilon=x1-test;    %�в�
    delta=abs(epsilon./x1);    %������
    if isempty(find(OPTIONS=='C'))==0    % ����ȼ��鷨
        C=std(epsilon,1)/std(x1,1);
        disp(['�����C=' num2str(C)]);
    end
    if isempty(find(OPTIONS=='P'))==0    %С�����ʼ��鷨
        S1=std(x1,1);
        S1_new=S1*0.6745;
        temp_P=find(abs(epsilon-mean(epsilon))<S1_new);
        P=length(temp_P)/n;
        disp(['С������P=' num2str(P)]);
    end
    if isempty(find(OPTIONS=='Q'))==0    %��������鷨
        Q=mean(delta);
        disp(['������Q=' num2str(Q)]);
    end
end

%% ��ͼ
if P==1
    n0_=find((n0>=1)&(n0<=n));
    if PLOTorNOT==1
        plot(n0_,x1(n0_),'ro','MarkerSize',11);
        hold on 
        plot(n0,predict,'*','MarkerSize',10,'Color','b');
        grid on
        hold off
        legend('ԭʼ����','ģ��Ԥ��','Location','Best');
        xlabel('n');
        ylabel('x^{(1)}(n)');
        handle=gca;
    end
end