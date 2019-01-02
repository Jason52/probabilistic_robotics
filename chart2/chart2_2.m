Day1=[1,0,0];           %第一天的天气
Markulink=[0.8,0.4,0.2  %马尔科夫链矩阵
    0.2,0.4,0.6
    0,0.2,0.2];
Weather=Day1';          %天气概率

N = 100;                %计算第几天的天气
t = 1:1:N;
Sunday=zeros(1,N);      %晴天天气总和
Cloudy=zeros(1,N);      %多云天气总和
Rainy=zeros(1,N);       %雨天天气总和
Steady_entropy=0;

for n=1:N               %设置循环
Sunday(n)=Weather(1);
Cloudy(n)=Weather(2);
Rainy(n)=Weather(3);
Weather=Markulink*Weather;%天气转移
end
Steady_entropy=-(Weather(1)*log2(Weather(1))+Weather(2)*log2(Weather(2))+Weather(3)*log2(Weather(3)));
plot(t,Sunday,'b-',t,Cloudy,'r-',t,Rainy,'g-');
legend('Sunday','Cloudy','Rainy');
% plot(Sunday,'b-');hold on
% plot(Cloudy,'r-');hold on
% plot(Rainy,'g-');hold on