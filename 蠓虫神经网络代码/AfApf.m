%输入向量，两种蠓虫的特征向量
p=[1.24 1.36 1.38 1.378 1.38 1.40 1.48 1.54 1.56 1.14 1.18 1.20 1.26 1.28 1.30;1.72 1.74 1.64 1.82 1.90 1.70 1.70 1.82 2.08 1.78 1.96 1.86 2.00 2.00 1.96];
%目标向量
t=[1 1 1 1 1 1 1 1 1 0 0 0 0 0 0];
%创建感知器网络
net=newp([0 2.5;0 2.5],1);
figure ;
cla;
plotpv(p,t);
plotpc(net.IW{1},net.b{1});
hold on;
%训练该感知器网络
net=init(net);
linehandle=plotpc(net.IW{1},net.b{1});
pause
[net,y,e]=adapt(net,p,t);
%检验该感知器网络
p1=[1.24 1.28 1.40;1.80 1.84 2.04];
a=sim(net,p1);
 figure ;
  plotpv(p1,a);
  Thepoint=findobj(gca,'type','line');
  set(Thepoint,'color','red');
hold on;
plotpv(p,t);
plotpc(net.IW{1},net.b{1});
hold off;
pause

