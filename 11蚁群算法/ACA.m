%% 蚁群算法求解TSP问题

%% 数据准备
t0=clock;  %程序运行开始计时
citys=xlsread('TSPSample.xlsx','B2:C53');  %52座城市坐标
n=size(citys,1);
%计算距离矩阵
x_temp1=citys(:,1)*ones(1,n);
x_temp2=x_temp1';
y_temp1=citys(:,2)*ones(1,n);
y_temp2=y_temp1';
D=sqrt((x_temp1-x_temp2).^2+(y_temp1-y_temp2).^2);
for k=1:n
    D(k,k)=1e-4;  %为保证启发函数分母不为零，修正对角线元素的值
end

%% 初始化参数
m=1.5*n;                           % 蚂蚁数量。参考值是城市数量的1.5倍
alpha=1;                           % 信息素重要程度因子
beta=5;                            % 启发函数重要程度因子
vol=0.2;                           % 信息素挥发(volatilization)因子
Q=10;                              % 信息素常数
Heu_F=1./D;                        % 启发函数(heuristic function)
Tau=ones(n,n);                     % 初始化信息素矩阵
Table=zeros(m,n);                  % 初始化路径记录表
iter=1;                            % 迭代次数初值
iter_max=100;                      % 最大迭代次数 
Route_best=zeros(iter_max,n);      % 各代最佳路径       
Length_best=zeros(iter_max,1);     % 各代最佳路径的长度  
Length_ave=zeros(iter_max,1);      % 各代路径的平均长度  
Limit_iter=0;                      % 程序收敛时迭代次数

%% 迭代寻找最佳路径
while iter<=iter_max
    %随机产生各个蚂蚁的起点城市
    start = zeros(m,1);
    for k=1:m
      temp=randperm(n);
      start(k)=temp(1);
    end
    Table(:,1) = start; 
    % 构建解空间
    citys_index = 1:n;
    % 逐个蚂蚁路径选择
    for k=1:m
        % 逐个城市路径选择
        for t = 2:n
            tabu=Table(k,1:(t-1));  % 已访问的城市集合(禁忌表)
            allow_index=~ismember(citys_index,tabu);
            allow=citys_index(allow_index);  % 待访问的城市集合
            P=allow;
            % 计算城市间转移概率
            for s=1:length(allow)
                P(s)=Tau(tabu(end),allow(s))^alpha*Heu_F(tabu(end),allow(s))^beta;
            end
            P=P/sum(P);
            % 轮盘赌法选择下一个访问城市
            Pc=cumsum(P);
            target_index = find(Pc>=rand); 
            target=allow(target_index(1));
            Table(k,t)=target;
        end
    end
    % 计算各个蚂蚁的路径距离
    Length=zeros(m,1);
    for k=1:m
      Route=Table(k,:);
      for s=1:(n-1)
          Length(k)=Length(k)+D(Route(s),Route(s+1));
      end
      Length(k)=Length(k)+D(Route(n),Route(1));
    end
    % 计算最短路径距离及平均距离
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
    % 更新信息素
    Delta_Tau = zeros(n,n);
    % 逐个蚂蚁计算
    for k=1:m
      % 逐个城市计算
      for s=1:(n-1)
          Delta_Tau(Table(k,s),Table(k,s+1))=Delta_Tau(Table(k,s),Table(k,s+1))+Q/Length(k);
      end
      Delta_Tau(Table(k,n),Table(k,1)) = Delta_Tau(Table(k,n),Table(k,1)) + Q/Length(k);
    end
    Tau=(1-vol)*Tau+Delta_Tau;
    % 迭代次数加1，清空路径记录表
    iter=iter+1;
    Table=zeros(m,n);
end

%% 结果显示
[Shortest_Length,index] = min(Length_best);
Shortest_Route = Route_best(index,:);
Time_Cost=etime(clock,t0);
disp(['最短距离:' num2str(Shortest_Length)]);
disp(['最短路径:' num2str([Shortest_Route Shortest_Route(1)])]);
disp(['收敛迭代次数:' num2str(Limit_iter)]);
disp(['程序执行时间:' num2str(Time_Cost) 's']);

%% 绘图
figure(1)
% 最优化路径示意图
plot([citys(Shortest_Route,1);citys(Shortest_Route(1),1)],...
     [citys(Shortest_Route,2);citys(Shortest_Route(1),2)],'o-');
grid on
for k=1:size(citys,1)
    text(citys(k,1),citys(k,2),['   ' num2str(k)]);
end
text(citys(Shortest_Route(1),1),citys(Shortest_Route(1),2),'       起点');
text(citys(Shortest_Route(end),1),citys(Shortest_Route(end),2),'       终点');
xlabel('城市位置x坐标')
ylabel('城市位置y坐标')
title(['ACA最优化路径(最短距离:' num2str(Shortest_Length) ')'])

figure(2)
% 算法收敛轨迹
plot(1:iter_max,Length_best,'LineWidth',1);
xlabel('迭代次数')
ylabel('每次迭代后的最短距离')
title('算法收敛轨迹')