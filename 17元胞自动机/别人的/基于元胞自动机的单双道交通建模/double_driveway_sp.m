%初始化仿真参量
v = 0;p=0;d=0;
nl = 100;
nc = 2;dt=0.01;nt=1000;
n=1;
fp = 1.2;
[v,d,p] = multi_driveway( nl,nc,fp,dt,nt );
