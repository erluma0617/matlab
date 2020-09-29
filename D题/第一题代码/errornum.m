
data=xlsread('武汉.xls');
for ii = 1:6
    P=data(:,ii);
    ave = mean(P);%mean 求解平均值
    u = std(P);%求解标准差
    for i = 1:238
        if(abs(P(i)-ave)>3*u)
            P(i) = 0;
            P_ans = P(P==0);
            len=length(P_ans);
            if len == []
                continue
            else
                location=find(P==0);
                if len == 1
                    loc(1,ii)=location;
                else
                    for iii=1:len
                        loc(iii,ii)=location(iii);
                    end
                end
            end
        else
            continue;
        end
    end
 
end
 
ans=loc(loc~=0);
ans=unique(ans);%删除重复的值

% 根据索引去除异常值
data(ans,:)=[];
