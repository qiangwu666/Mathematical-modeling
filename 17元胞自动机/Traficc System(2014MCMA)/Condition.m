function [ Judgement ] = Condition( a,index1,index2 )

n=size(a,2);
if index1==1
    index0=2;
else
    index0=1;
end

if a(index0,index2)~=0
    Judgement=0;
else
    a(index0,index2)=a(index1,index2);
    id1=find(a(index0,1:(index2-1))~=0);  id1=max(id1);
    id2=find(a(index0,(index2+1):n)~=0);  id2=min(id2);
    if isempty(id1)&&(isempty(id2))
        Judgement=1;
    elseif isempty(id1)&&~isempty(id2)
        G2=id2-index2;
        G2s=a(index0,index2)-a(index0,id2)+2;
        if G2>G2s
            Judgement=1;
        else
            Judgement=0;
        end
    elseif ~isempty(id1)&&isempty(id2)
        G1=id1-index2;
        G1s=a(index0,index2)-a(index0,id1)+2;
        if G1>G1s
            Judgement=1;
        else
            Judgement=0;
        end
    elseif ~isempty(id1)&&~isempty(id2)
        G1=id1-index2;  G2=id2-index2;
        G1s=a(index0,index2)-a(index0,id1)+2;
        G2s=a(index0,index2)-a(index0,id2)+2;
        if (G1>G1s)&&(G2>G2s)
            Judgement=1;
        else
            Judgement=0;
        end
    end
end

end

