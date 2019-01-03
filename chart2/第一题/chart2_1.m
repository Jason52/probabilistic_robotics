P_init=0.01;
p=(1:10);
count=(1:10);
p(1)=P_init;
for i=1:9
p(i+1)=p(i)/(p(i)+(1-p(i))/3);
end

plot(count,p,'b-o');