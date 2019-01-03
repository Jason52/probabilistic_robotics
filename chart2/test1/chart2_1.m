P_init=0.01;                    %初始传感器置信度
N = 10;  
p=(1:N+1);                       %定义每次概率值
p(1)=P_init;                    %传入初值
for i=1:N
p(i+1)=p(i)/(p(i)+(1-p(i))/3);
end

plot(p,'b-o');


