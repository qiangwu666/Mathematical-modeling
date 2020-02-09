%% ��������
m=100; n=100;  %Ԫ��ά��m*n
% generation=1000;  %���ֳ����
gen=1;  %��������������

%% ���ӣ��������
a=round(rand(m,n));  %���������ʼֵ
z=zeros(m,n);
img=image(cat(3,a,z,z));
axis equal; axis tight; axis off

%% ��Ⱥ����
c=zeros(m,n);
% for gen=1:generation
while 1
    neighbours=a(:,[end,1:end-1])+a(:,[2:end,1])...
        +a([end,1:end-1],:)+a([2:end,1],:)...
        +a([end,1:end-1],[end,1:end-1])...
        +a([end,1:end-1],[2:end,1])...
        +a([2:end,1],[end,1:end-1])...
        +a([2:end,1],[2:end,1]);
    %���±�������
    b=(neighbours==3)|((neighbours==2)&(a));
    %���±���ͼ��
    set(img,'cdata',cat(3,a,z,z));
    title(['Generation: ',num2str(gen)]);
    if isequal(b,c)
        break
    end
    pause(0.01)
    c=a;  a=b;
    gen=gen+1;
end

disp(['����' num2str(gen) '�������Ժ���Ⱥ�ﵽƽ��']);