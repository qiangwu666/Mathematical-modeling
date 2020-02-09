%% ��Ӧ�Ⱥ���
% ������Ӧ�Ⱥ���fitness

%% ���ù����亯�������Сֵ
options1=gaoptimset('Generations',100);
[x1,fval1,reason1,output1,finalpop1]=ga(@fitness,1,options1);
%���ν���
options2=gaoptimset('StallGenLimit',300,'StallTimeLimit',40,...
    'Generations',800,'PlotFcns',@gaplotbestf,'InitialPopulation',finalpop1);
[x2,fval2]=ga(@fitness,1,options2);

%% ���
theory=-185.1;
p=abs(fval2-theory)/abs(theory);

%% �����ʾ
disp(['��x=' num2str(x2) '��ʱ��']);
disp(['fmax=' num2str(-fval2)]);
disp(['�������������ֵ�����Ϊ��' num2str(p)]);