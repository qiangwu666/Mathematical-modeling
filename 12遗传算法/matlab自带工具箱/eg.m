%% 适应度函数
% 定义适应度函数fitness

%% 调用工具箱函数求解最小值
options1=gaoptimset('Generations',100);
[x1,fval1,reason1,output1,finalpop1]=ga(@fitness,1,options1);
%二次进化
options2=gaoptimset('StallGenLimit',300,'StallTimeLimit',40,...
    'Generations',800,'PlotFcns',@gaplotbestf,'InitialPopulation',finalpop1);
[x2,fval2]=ga(@fitness,1,options2);

%% 误差
theory=-185.1;
p=abs(fval2-theory)/abs(theory);

%% 结果显示
disp(['当x=' num2str(x2) '的时候']);
disp(['fmax=' num2str(-fval2)]);
disp(['求解结果与理论最值的误差为：' num2str(p)]);