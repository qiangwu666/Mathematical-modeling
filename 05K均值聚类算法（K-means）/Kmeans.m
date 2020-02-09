function [ center,result ] = Kmeans(sample,K,ShowOrNot,PlotOrNot)
% ���������
% center:�������ġ������ÿһ��Ϊһ�����ĵ����ꡣ
% result:������������һ���洢���������Ԫ�����顣

% ���������
% sample:�������������ݡ�ÿһ��Ϊһ������������
% K:�������ĵĸ���
% ShowOrNot:1��ʾ��ʾ�������Ľ����0��ʾ����ʾ
% PlotOrNot:1��ʾ���Ƶ���ͼչʾ������������ά�Ȳ�����3ʱ��Ч����0��ʾ�����ơ�

%% ��������������
if nargin==2
    S=0;P=0;
elseif nargin==3
    S=1;P=0;
elseif nargin==4
    S=1;P=1;
end

%% ���ݳ�ʼ��
x=sample;
z=x(1:K,:);  %ѡȡK��������Ϊ��ʼ��������
z1=zeros(size(z));
chara=size(z,2);  %��������Ŀ

%% ����Ѱ�Ҿ�������
while 1
    count=zeros(K,1);
    allsum=zeros(size(z));
    temp=zeros(K,1);
    re=cell(1,K);
    for k=1:size(x,1)  %��ÿһ�����������㵽�����������ĵľ���
        for s=1:K
            temp(s)=sqrt(sum((x(k,:)-z(s,:)).^2));
        end
        n=find(temp==min(temp));
        count(n)=count(n)+1;
        re{1,n}=[re{1,n};x(k,:)];
        allsum(n,:)=allsum(n,:)+x(k,:);
    end
    % ������������
    z1=allsum./repmat(count,1,chara);
    if z==z1
        break;
    else
        z=z1;
    end
end

center=z;
result=re;

%% �����ʾ
if S==1
    if ShowOrNot==1
        disp('�������ģ�')
        for s=1:K
            dis='';
            dis=[dis '('];
            for r=1:chara 
                dis=[dis num2str(center(s,r))];
                if r<chara
                    dis=[dis ','];
                end
            end
            dis=[dis ')'];
            disp(dis);
        end
    end
end

if P==1
    if PlotOrNot==1
        if chara>3
            warning('ά�ȴ���3�����ɻ�ͼ��')
        elseif chara==1
            plot(x,zeros(1,length(x)),'b*','MarkerSize',10);
            hold on
            plot(center,zeros(1,K),'ro');
            axis([min(x)-1 max(x)+1 -1 1]);
            hold off
            title('K��ֵ������ͼ')
            xlabel('����X')
            grid on
        elseif chara==2
            plot(x(:,1),x(:,2),'b*','MarkerSize',10);
            hold on
            plot(center(:,1),center(:,2),'ro');
            hold off
            title('K��ֵ������ͼ')
            xlabel('����X1')
            ylabel('����X2')
            grid on
        elseif chara==3
            plot3(x(:,1),x(:,2),x(:,3),'b*','MarkerSize',10);
            hold on
            plot3(z1(:,1),z1(:,2),z1(:,3),'ro');
            hold off
            title('K��ֵ������ͼ')
            xlabel('����X1')
            ylabel('����X2')
            zlabel('����X3')
            grid on
        end
    end
end

end

