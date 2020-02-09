%  车流密度变化时的单车道仿真程序
%  nc:车道数目（1或2），nl:车道长度
%  v:平均速度，d:换道次数（1000次）p:车流密度
%  dt:仿真步长时间，nt:仿真步长数目
%  fp:车道入口处新进入车辆的概率
v = 0;p=0;d=0;
nl = 100;
nc = 1;dt=0.01;nt=1000;
n=1;
for fp = 2.5:-0.25:0.5
    [ v d p ] = multi_driveway( nl,nc,fp,dt,nt );
    va(n) = v;
    pa(n) = p;
    da(n) = d;
    n=n+1;
    %绘制平均速率-车流密度（v-p）曲线
    figure(2)
    plot(pa,va);
    %绘制车流密度的变化曲线
    figure(3)
    plot(pa);
end