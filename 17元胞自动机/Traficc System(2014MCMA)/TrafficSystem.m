%% ��������
m=2; n=200;  %Ԫ��ά��m*n
range=10;  %��ʼ������������
v0=1;  vm=5;  %��ʼ�ٶ�������ٶ�
time=0;  %��ͨϵͳ����ʱ��ʱ��
Pa=[1 0.8 0.5 0.3 0];  %���ٸ���
Pb=[0 0.1 0.3 0.4 0.8];  %���ٸ���

%% ��ʼ��
a=zeros(m,n);
a(2,1:2:range)=round(4*rand(1,length(1:2:range)))+1;
b=a;
%���Ƴ�ʼͼ��
A=(a==0);
array=0.8*ones(20+2+m,n);
array(11,:)=A(1,:);
array(13,:)=A(2,:);
img=imshow(array);
set(gcf,'position',[50 132 900 400]) 
set(gca,'position',[0.1 0.1 0.8,0.8]) 

%% ��Ⱥ����
for time=1:1000
    %����Ԫ��״̬
    for k=n:-1:1  %����ÿ��Ԫ��
        if a(1,k)~=0  %�������ĳ���
            index1=find(a(1,(k+1):n)~=0); index1=min(index1)+k; 
            if isempty(index1)  %ǰ��û��������������
                G=inf;  Gs=0;
            else                %ǰ���г����������Ͱ�ȫ����
                G=index1-k;  Gs=a(1,k)+1;
            end
            if (G>Gs)&&(~isempty(index1))             %��ȫ����֮�⣬��������
                if rand>1-Pa(a(1,k))  %����
                    vt=a(1,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                elseif rand<Pb(a(1,k))  %����
                    vt=a(1,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                else                   %ԭ��
                    vt=a(1,k);
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                end
            elseif (G<=Gs)&&(~isempty(index1))        %��ȫ����֮�ڣ���������
                if (a(1,k)<=a(1,index1))...  %v��<=vǰ
                        &&(rand<0.1)...     %��0.1�ĸ���ѡ�񳬳�
                        &&(Condition(a,1,k));  %���㳬������
                    b(2,k)=b(1,k)+1;
                    b(1,k)=0;
                elseif (a(1,k)<=a(1,index1))...  %v��>=vǰ
                        &&(rand<0.75)...     %��һ���ĸ���ѡ�񳬳�
                        &&(Condition(a,1,k));  %���㳬������
                    b(2,k)=b(1,k)+1;
                    b(1,k)=0;
                else                        %�������
                    vt=G-2;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                end
            elseif isempty(index1)  %ǰ��û�г�
                if rand>1-Pa(a(1,k))  %����
                    vt=a(1,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                elseif rand<Pb(a(1,k))  %����
                    vt=a(1,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                else                   %ԭ��
                    vt=a(1,k);
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                end
            end 
        elseif a(2,k)~=0
            index2=find(a(2,(k+1):n)~=0);  index2=min(index2)+k;
            if isempty(index2)  %ǰ��û��������������
                G=inf;  Gs=0;
            else                %ǰ���г����������Ͱ�ȫ����
                G=index2-k;  Gs=a(2,k)+1;
            end
            if (G>Gs)&&(~isempty(index2))             %��ȫ����֮�⣬��������
                if rand>1-Pa(a(2,k))  %����
                    vt=a(2,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                elseif rand<Pb(a(2,k))  %����
                    vt=a(2,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                else                   %ԭ��
                    vt=a(2,k);
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                end
            elseif (G<=Gs)&&(~isempty(index2))        %��ȫ����֮�ڣ���������
                if (a(2,k)<=a(2,index2))...  %v��<=vǰ
                        &&(rand<0.1)...     %��0.1�ĸ���ѡ�񳬳�
                        &&(Condition(a,2,k));  %���㳬������
                    b(1,k)=b(2,k)+1;
                    b(2,k)=0;
                elseif (a(2,k)<=a(2,index2))...  %v��>=vǰ
                        &&(rand<0.75)...     %��һ���ĸ���ѡ�񳬳�
                        &&(Condition(a,2,k));  %���㳬������
                    b(1,k)=b(2,k)+1;
                    b(2,k)=0;
                else                        %�������
                    vt=G-2;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                end
            elseif isempty(index2)  %ǰ��û�г�
                if rand>1-Pa(a(2,k))  %����
                    vt=a(2,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                elseif rand<Pb(a(2,k))  %����
                    vt=a(2,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                else                   %ԭ��
                    vt=a(2,k);
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                end
            end
        end
    end
    %�¼���ĳ�
    id=find(b(2,1:range)~=0);  id=min(id);
    if id>2
        if mod(id,2)==0
            b(2,1:2:id-2)=round(4*rand(1,length(1:2:id-2)))+1;
        else
            b(2,1:2:id-1)=round(4*rand(1,length(1:2:id-1)))+1;
        end
    end
    b(b>vm)=vm;
    %����ͼ��
    A=(b==0);
    array(11,:)=A(1,:);
    array(13,:)=A(2,:);
    set(img,'cdata',array);
    title(['Time: ',num2str(time),'s']);
    a=b;
%     for s=2:n-1
%         if ((b(1,s)~=0)&&((b(1,s-1)~=0)||(b(1,s+1)~=0)))||...
%                 ((b(2,s)~=0)&&((b(2,s-1)~=0)||(b(2,s+1)~=0)))
%             disp(['error!' 'time=' num2str(time)])
%         end
%     end
    pause(0.01);
end