format short

%%
%Q1 :Calculate 
a1 = (5-(19/7)+(2.5^3))^2;
b1 = 7*3.1 + (sqrt(120)/5) - 15^(5/3);

fprintf('Q1. Calculate\n')
fprintf("(a) : %f \n(b) : %f\n\n", a1, b1)

%%
%Q2 :Calculate 
a2 = nthroot(8 + (80/2.6), 3) + exp(3.5);
b2 = ((1/sqrt(0.75)) + 73/(3.1^3))^0.25 + 55*0.41;

fprintf('Q2. Calculate\n')
fprintf("(a) : %f \n(b) : %f\n\n", a2, b2)

%%
%Q3 :Calculate
a3 = (23+nthroot(45, 3))/(16*0.7) + log10(589006);
b3 = (36.1-(2.25*pi))*(exp(2.3) + sqrt(20));

fprintf('Q3. Calculate\n')
fprintf("(a) : %f \n(b) : %f\n\n", a3, b3)

%%
%Q4 :Calculate
a4 = (3.8^2) / (2.75-41*2.5) + ((5.2 + 1.8^5)/sqrt(3.5));
b4 = (2.1*(10^6) - (15.2*(10^5))) / (3 * nthroot((6*(10^11)), 3));

fprintf('Q4. Calculate\n')
fprintf("(a) : %f \n(b) : %f\n\n", a4, b4)

%%
%Q5 : Calculate
a5 = sin(0.2*pi)/cos(pi/6) + tand(72);
b5 = (tand(64)*cosd(15))^2 + (sind(37)^2)/(cosd(20)^2);

fprintf('Q5. Calculate\n')
fprintf("(a) : %f \n(b) : %f\n\n", a5, b5)

%%
%Q6 
z = 4.5;
a6 = 0.4*(z^4) + 3.1*(z^2) - (162.3*z) - 80.7;
b6 = (z^3-23) / nthroot((z^2+17.5), 3);

fprintf('Q6. Evaluate\n')
fprintf("z = %f\n", z)
fprintf("(a) : %f \n(b) : %f\n\n", a6, b6)

%%
%Q7 
t = 3.2;
a7 = 0.5*exp(2*t) - 3.81*(t^3);
b7 = (6*(t^2) + 6*t - 2) / ((t^2)-1);

fprintf('Q7. Evaluate\n')
fprintf("t = %f\n", t)
fprintf("(a) : %f \n(b) : %f\n\n", a7, b7)

%%
%Q8
x = 6.5; y = 3.8;
a8 = (x^2 + y^2)^(2/3) + (x*y)/(y-x);
b8 = sqrt(x + y)/((x-y)^2) + 2*(x^2) - x*(y^2);

fprintf('Q8. Evaluate\n')
fprintf("x = %f, y = %f\n", x, y)
fprintf("(a) : %f \n(b) : %f\n\n", a8, b8)

%%
%Q9
c = 4.6; d = 1.7; a = c*(d^2); b = (c+a)/(c-d);
a9 = exp(d-b) + nthroot(c+a, 3) - (c*a)^d;
b9 =(d/c) + (c/b)^2 - (c^d) - (a/b);

%b9에 있는게 t가 맞는지 한번 교수님께 여쭤볼 것??? (ct/b)^2?
%t는 없는거라 생각할 것 

fprintf('Q9. Evaluate\n')
fprintf("(a) : %f \n(b) : %f\n\n", a9, b9)


%%
%Q10
x = pi/10;
case10a_1 = cos(x)^2 - sin(x)^2;
case10a_2 = 1-2*(sin(x)^2);

case10b_1 = tan(x)/(sin(x)-2*tan(x));
case10b_2 = 1/(cos(x)-2);

fprintf('Q10. Verify that the identity is correct by calculating the values of the left and right\n')
fprintf("(a left) : %f \n(a right) : %f\n\n", case10a_1, case10a_2)
fprintf("(b left) : %f \n(b right) : %f\n\n", case10b_1, case10b_2)

%logical 표현을 써도 되...지만 이게 false로 뜸 
%제 발 찍는 꼴이니 그냥 값만 표시하면 ㅇㅋ (잘햇단뜻임)


%%
%Q11
x = 20;
case11a_1 = (sind(x) + cosd(x))^2;
case11a_2 = 1 + 2*sind(x)*cosd(x);

case11b_1 = (1-2*cosd(x)-3*(cosd(x)^2))/(sind(x)^2);
case11b_2 = (1-3*cosd(x))/(1-cosd(x));

fprintf('Q11. Verify that the identity is correct by calculating the values of the left and right\n')
fprintf("(a left) : %f \n(a right) : %f\n\n", case11a_1, case11a_2)
fprintf("(b left) : %f \n(b right) : %f\n\n", case11b_1, case11b_2)


%%
%Q12
alpha = pi/8; beta = pi/6;
case12a = tan(alpha + beta);
case12b = (tan(alpha) + tan(beta))/(1-(tan(alpha)*tan(beta)));

fprintf('Q12. Verify that the identity is correct by calculating the values of the left and right\n')
fprintf("(left) : %f \n(right) : %f\n\n", case12a, case12b)


%%
%Q13
case13a = (2*(pi/3))*cos(pi/3) + ((pi/3)^2-2)*sin(pi/3);
case13b = (2*(pi/6))*cos(pi/6) + ((pi/6)^2-2)*sin(pi/6);
case13 = case13a - case13b;

fprintf('Q13. use MATLAB to calculate the following definite integral\n')
fprintf("answer : %f\n\n", case13)


%%
%Q22
eggs = 4217; boxsize = 36; remain = eggs-fix(eggs/boxsize)*boxsize;
fprintf("Q22. calculate how many eggs will remain unpacked if every box that is used has to be full\n : %d \n\n", remain)


%%
%Q23
people = 777; bus_seat = 46; van_seat = 12;
bus = fix(people / bus_seat);
van = mod(people - (bus_seat * bus), van_seat);
empty = van_seat - van;

fprintf('Q23. \n')
fprintf("answer : %d\n", empty)
fprintf('\n')


%%
%Q24
format long g
instance = 7E8/13;
a24 = round(instance*10)/10;
%b24 = round(instance/1000000)*1000000; <틀렷어유 
b24b = round(instance,6);

fprintf('Q24. use the variable in a mathematical expression \nto calculate the following by typing one command\n')
a24 
fprintf("\n")
b24
fprintf("\n\n")


%million은 의 5승. 그치만 ^-6이라 생각하고 계산할 것 



%%
%Q29
%format long
case1 = factorial(59)/(factorial(5) * factorial(59-5));
case2 = factorial(35)/(factorial(1) * factorial(34));
Combination = case1 * case2;

fprintf('Q29. \n')
fprintf("answer : ")
Combination
fprintf("\n\n")


%%
%Q33
a33 = gcd(91, 147);
b33 = gcd(555, 962);

a332 = lcm(24, 27);
b332 = lcm(14, 18);

fprintf('Q33 : GCD FUNCTION \n')
fprintf('(a) : %d \n(b) : %d\n\n', a33, b33)

fprintf('Q33 : LCM FUNCTION \n')
fprintf('(a) : %d \n(b) : %d\n\n', a332, b332)


%%
%Q38
format rational
a38 = 5/8 + 16/6;
b38 = 1/3 - 11/13 + 2.7^2;

fprintf('Q38. \n')
a38
fprintf("\n")
b38
fprintf("\n")

%%
%Q39
format compact
n = 19;
TrueVal = factorial(n);
ApproxVal = sqrt((2 * n + (1/3))*pi*(n^n)*exp(-n));
ErrorValue = (TrueVal - ApproxVal)/TrueVal;

fprintf('Q39 : Calculate the Error \n')
ErrorValue
fprintf('\n\n')

%%
%Q32
constk = log(0.5) / 5730;
t32 = round(log(0.7745) / constk);
%t32에 로그 빼먹었어요 ㄷㅂ,........ 어쩐지 이상하드라 

fprintf('Q32 : \n')
fprintf('Constant K : %f\n', constk)
fprintf('round the answer : %d\n\n', t32)


%%
%Q40
format short
r1 = 149.6 * (10^9); r2 = 384.4 * (10^6);
mearth = 5.98 * (10^28); msun = 2.0 * (10^30); mmoon = 7.36 * (10^22);
G = 6.67 * (10^-11);

F1 = G * mearth * msun / (r1 ^ 2);
F2 = G * mearth * mmoon / (r2 ^ 2);
attdif = round(F1 / F2);

fprintf('Q40: \n')
attdif



%%
%Q37
format default
k37 = 0.24; g37 = 9.81; t37 = 8; m37 = 95;
v37 = sqrt(m37 * g37 / k37) * tanh(sqrt(k37 * g37 / m37) * t37);
d37 = m37/k37*log(cosh(sqrt(k37*g37/m37)*t37));

fprintf('Q37: \n')
fprintf('Velocity : ')
v37
fprintf('Falling Distance : ')
d37



%%
%이상적인 파일명은 이름(영어)_학번_hw1.m
