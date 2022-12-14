%%
%Example - Sample Problem 4-1 

r = 30; R = 45; V = 200000;

theta = asin(r/R); %radian
h = R*(1-cos(theta));
V_cap = (1/3)*pi*(h^2)*(3*R - h);
H = (V - V_cap)/h;
V_cyl = pi*(r^2)*H;
S = 2*pi*r*H + r*pi*R*H;

fprintf('height H is %f ft \n', H)
fprintf('S is %f \n', S)

%상수값 입력받는걸 input으로 바꿔 처리해도 ok.
%오히려 그렇게 하는걸 권장하고 있는듯??? 


%%
%Example - Sample Problem 4-3

Vs = 24; R = [20 14 12 18 8 15 10];
R_eq = sum(R);

Vn = R*Vs/(R_eq^2);
Pn = R*(Vs^2)/(R_eq^2);
I = Vs/R_eq;
Psum = Vs*I;

Ans = [R' Vn' Pn'];

%disp쓰는 것도 연습해 볼 것
%입력값에 행렬/난수를 받는것도 가능하니 되게 해야 함
%fprintf보다 disp가 커맨드 창에 띄우기는 예쁘니까 그때그때 고려할 것

%%
%Sample Exercise : Equations
%담시간에 같이 풀고 과제 설명 예정



