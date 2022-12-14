%%
% sample 1-1

x = pi/5;
leftside = cos(x/2)^2;
rightside = (tan(x) + sin(x))/(2*tan(x));


%%
% sample 1-2
r1 = 16; r2 = 6.5;
r3 = 12; r4 = 9.5;
c1c2 = r1+r2; c1c3 = r1 + r3;
c1c4 = r1+r4; c2c3 = r2 + r3;
c3c4 = r3 + r4;

gamma1 = acos((c1c2^2 + c1c3^2 - c2c3^2) / (2*c1c2*c1c3));
gamma2 = acos((c1c3^2 + c1c4^2 - c3c4^2) / (2*c1c3*c1c4));
gamma3 = gamma2 + gamma1;

c2c4 = sqrt(c1c2^2 + c1c4^2 - 2*c1c2*c1c4*cos(gamma3));


%%
% sample 1-3
Ts = 38; T0 = 120; k = 0.45; t = 3;
T = Ts + (T0 - Ts)*exp(-k*t);
ans13 = round(T);


%%
% sample 1-4
P = 5000; t = 17; r = 0.085; n = 12;
B0= B*(1 + r)^t;
tans = log(B0/B)/(n*log(1+r/n));
year = fix(tans);
month = ceil((tans-years)*12);

%세미콜론 없이 변수명만 작성하면 자동출력됨. 과제 제출하기 전에 대답만 뜨도록 해서 내면 베스트. 

