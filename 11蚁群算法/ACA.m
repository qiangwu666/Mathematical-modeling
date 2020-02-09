%% ��Ⱥ�㷨���TSP����

%% ����׼��
t0=clock;  %�������п�ʼ��ʱ
citys=xlsread('TSPSample.xlsx','B2:C53');  %52����������
n=size(citys,1);
%����������
x_temp1=citys(:,1)*ones(1,n);
x_temp2=x_temp1';
y_temp1=citys(:,2)*ones(1,n);
y_temp2=y_temp1';
D=sqrt((x_temp1-x_temp2).^2+(y_temp1-y_temp2).^2);
for k=1:n
    D(k,k)=1e-4;  %Ϊ��֤����������ĸ��Ϊ�㣬�����Խ���Ԫ�ص�ֵ
end

%% ��ʼ������
m=1.5*n;                           % �����������ο�ֵ�ǳ���������1.5��
alpha=1;                           % ��Ϣ����Ҫ�̶�����
beta=5;                            % ����������Ҫ�̶�����
vol=0.2;                           % ��Ϣ�ػӷ�(volatilization)����
Q=10;                              % ��Ϣ�س���
Heu_F=1./D;                        % ��������(heuristic function)
Tau=ones(n,n);                     % ��ʼ����Ϣ�ؾ���
Table=zeros(m,n);                  % ��ʼ��·����¼��
iter=1;                            % ����������ֵ
iter_max=100;                      % ���������� 
Route_best=zeros(iter_max,n);      % �������·��       
Length_best=zeros(iter_max,1);     % �������·���ĳ���  
Length_ave=zeros(iter_max,1);      % ����·����ƽ������  
Limit_iter=0;                      % ��������ʱ��������

%% ����Ѱ�����·��
while iter<=iter_max
    %��������������ϵ�������
    start = zeros(m,1);
    for k=1:m
      temp=randperm(n);
      start(k)=temp(1);
    end
    Table(:,1) = start; 
    % ������ռ�
    citys_index = 1:n;
    % �������·��ѡ��
    for k=1:m
        % �������·��ѡ��
        for t = 2:n
            tabu=Table(k,1:(t-1));  % �ѷ��ʵĳ��м���(���ɱ�)
            allow_index=~ismember(citys_index,tabu);
            allow=citys_index(allow_index);  % �����ʵĳ��м���
            P=allow;
            % ������м�ת�Ƹ���
            for s=1:length(allow)
                P(s)=Tau(tabu(end),allow(s))^alpha*Heu_F(tabu(end),allow(s))^beta;
            end
            P=P/sum(P);
            % ���̶ķ�ѡ����һ�����ʳ���
            Pc=cumsum(P);
            target_index = find(Pc>=rand); 
            target=allow(target_index(1));
            Table(k,t)=target;
        end
    end
    % ����������ϵ�·������
    Length=zeros(m,1);
    for k=1:m
      Route=Table(k,:);
      for s=1:(n-1)
          Length(k)=Length(k)+D(Route(s),Route(s+1));
      end
      Length(k)=Length(k)+D(Route(n),Route(1));
    end
    % �������·�����뼰ƽ������
    if iter==1
        [min_Length,min_index]=min(Length);
        Length_best(iter)=min_Length;  
        Length_ave(iter)=mean(Length);
        Route_best(iter,:)=Table(min_index,:);
        Limit_iter=1; 
    else
        [min_Length,min_index] = min(Length);
        Length_best(iter)=min(Length_best(iter-1),min_Length);
        Length_ave(iter)=mean(Length);
        if Length_best(iter)==min_Length
            Route_best(iter,:)=Table(min_index,:);
            Limit_iter=iter; 
        else
            Route_best(iter,:)=Route_best((iter-1),:);
        end
    end
    % ������Ϣ��
    Delta_Tau = zeros(n,n);
    % ������ϼ���
    for k=1:m
      % ������м���
      for s=1:(n-1)
          Delta_Tau(Table(k,s),Table(k,s+1))=Delta_Tau(Table(k,s),Table(k,s+1))+Q/Length(k);
      end
      Delta_Tau(Table(k,n),Table(k,1)) = Delta_Tau(Table(k,n),Table(k,1)) + Q/Length(k);
    end
    Tau=(1-vol)*Tau+Delta_Tau;
    % ����������1�����·����¼��
    iter=iter+1;
    Table=zeros(m,n);
end

%% �����ʾ
[Shortest_Length,index] = min(Length_best);
Shortest_Route = Route_best(index,:);
Time_Cost=etime(clock,t0);
disp(['��̾���:' num2str(Shortest_Length)]);
disp(['���·��:' num2str([Shortest_Route Shortest_Route(1)])]);
disp(['������������:' num2str(Limit_iter)]);
disp(['����ִ��ʱ��:' num2str(Time_Cost) 's']);

%% ��ͼ
figure(1)
% ���Ż�·��ʾ��ͼ
plot([citys(Shortest_Route,1);citys(Shortest_Route(1),1)],...
     [citys(Shortest_Route,2);citys(Shortest_Route(1),2)],'o-');
grid on
for k=1:size(citys,1)
    text(citys(k,1),citys(k,2),['   ' num2str(k)]);
end
text(citys(Shortest_Route(1),1),citys(Shortest_Route(1),2),'       ���');
text(citys(Shortest_Route(end),1),citys(Shortest_Route(end),2),'       �յ�');
xlabel('����λ��x����')
ylabel('����λ��y����')
title(['ACA���Ż�·��(��̾���:' num2str(Shortest_Length) ')'])

figure(2)
% �㷨�����켣
plot(1:iter_max,Length_best,'LineWidth',1);
xlabel('��������')
ylabel('ÿ�ε��������̾���')
title('�㷨�����켣')