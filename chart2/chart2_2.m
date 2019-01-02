Day1=[1,0,0];           %��һ�������
Markulink=[0.8,0.4,0.2  %����Ʒ�������
    0.2,0.4,0.6
    0,0.2,0.2];
Weather=Day1';          %��������

N = 100;                %����ڼ��������
t = 1:1:N;
Sunday=zeros(1,N);      %���������ܺ�
Cloudy=zeros(1,N);      %���������ܺ�
Rainy=zeros(1,N);       %���������ܺ�
Steady_entropy=0;

for n=1:N               %����ѭ��
Sunday(n)=Weather(1);
Cloudy(n)=Weather(2);
Rainy(n)=Weather(3);
Weather=Markulink*Weather;%����ת��
end
Steady_entropy=-(Weather(1)*log2(Weather(1))+Weather(2)*log2(Weather(2))+Weather(3)*log2(Weather(3)));
plot(t,Sunday,'b-',t,Cloudy,'r-',t,Rainy,'g-');
legend('Sunday','Cloudy','Rainy');
% plot(Sunday,'b-');hold on
% plot(Cloudy,'r-');hold on
% plot(Rainy,'g-');hold on