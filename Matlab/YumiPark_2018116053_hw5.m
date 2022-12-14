%
%Q1

fprintf('Q1 \n\n');
fprintf('(a):');

switch 6*4 > 32-3
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end


fprintf('(b):');
switch 4*3-7<15/3>-1
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end


fprintf('(c):');
switch 2*(3<8/4+2)^2 < (-2)^3
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end

fprintf('(d):');
switch (5+0)/3 == 3- ~(10/5-2)
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end


%%
%Q2

d = 6; e = 4; f = -2;
fprintf('\nQ2 \n\n');

fprintf('(a):');
switch d + f >= e > d-e
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end

fprintf('(b):');
switch e>d>f
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end

fprintf('(c):');
switch e-d <= d-e == f/f
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end

fprintf('(d):');
switch (d/e*f < f) > -1*(e-d)/f
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end


%%
%Q3

fprintf('\nQ3 \n\n');


v = [-2 4 1 0 2 1 2];
w = [2 5 0 1 2 -1 3];

fprintf('(a):');
~v == ~w

fprintf('(b):');
w >= v

fprintf('(c):');
v > ~-1*w

fprintf('(d):');
w > -1*w

%%
%Q4
fprintf('\nQ4 \n\n');
u = v(v<=w)

%%
%Q5

fprintf('\nQ5 \n\n');

fprintf('(a):');
switch 0|7 & 9 & -3
    case 1
        fprintf('Nonzero \n');
    case 0
        fprintf('Zero \n');
    otherwise
        fprintf('error\n');
end

fprintf('(b):');
switch 7>6 & ~0<=2
    case 1
        fprintf('Nonzero \n');
    case 0
        fprintf('Zero \n');
    otherwise
        fprintf('error\n');
end

fprintf('(c):');
switch ~4< 5|0 >= 12/6
    case 1
        fprintf('Nonzero \n');
    case 0
        fprintf('Zero \n');
    otherwise
        fprintf('error\n');
end

fprintf('(d):');
switch -7<-5<-2 & 2+3 <= 15/3
    case 1
        fprintf('Nonzero \n');
    case 0
        fprintf('Zero \n');
    otherwise
        fprintf('error\n');
end
fprintf('\n');

%%
%Q6

fprintf('\nQ6 \n\n');

for i = 1:4
    for j = 1:6
        array(i, j) = 2*i - 3*j;
    end
end

disp(array);

%%
%Q7

fprintf('\nQ7 \n\n');
numbers7 = randi([-20, 20], 1, 30);
nums7 = length(numbers7);
nums7_sum = [];

for i = 1:nums7 
    if rem(numbers7(i), 3)==0
        nums7_sum = [nums7_sum, numbers7(i)];
    end
end

ans_num7 = sum(nums7_sum);
fprintf('무작위로 생성한 난수는');
disp(numbers7);
fprintf('이 중 3으로 나누어 떨어지는 수는');
disp(nums7_sum);
fprintf('나누어 떨어지는 수들의 합은 %d \n\n', ans_num7);




%%
%Q8
array8 = randi([-10, 20],1,19);
numbers8 = length(array8);

fprintf('Q8 \n\n');
fprintf('랜덤으로 만들어진 난수 배열은\n');
disp(array8);
fprintf('계산 후 바뀐 배열은\n');

for i = 1:numbers8
    if array8(i) > 0
        array8(i) = array8(i) * 2;
    elseif array8(i) < 0
        array8(i) = array8(i) *3;
    end
end

disp(array8);


%%
%Q9

fprintf('Q9 \n\n');
array9 = randi([-15 20], 1, 25);
numbers9 = length(array9);

fprintf('랜덤으로 만들어진 난수 배열은\n');
disp(array9);
fprintf('계산 후 바뀐 배열은 \n');

pos_arr9 = [];

for i = 1:numbers9
    if array9(i) > 0
        %filter? setdiff는 정렬되니까 틀리겠죠?
        pos_arr9 = [pos_arr9, array9(i)];
    end
end
disp(pos_arr9);
cnt = numbers9 - length(pos_arr9);
fprintf('%d elements were eliminated\n\n', cnt);


%%
%Q10
fprintf('Q10 \n\n');
NYC = [33 33 18 29 40 55 19 22 32 37 58 54 51 52 45 41 45 39 36 45 33 18 19 19 28 34 44 21 23 30 39];
DEN = [39 48 61 39 14 37 43 38 46 39 55 46 46 39 54 45 52 52 62 45 62 40 25 57 60 57 20 32 50 48 28];

fprintf('(a):\n');
NYC_sum = sum(NYC); NYC_len = length(NYC);
DEN_sum = sum(DEN); DEN_len = length(DEN);
ans_nyc = round(NYC_sum/NYC_len, 1);
ans_den = round(DEN_sum/DEN_len, 1);
fprintf('avg temperature of NYC is %.1f\n', ans_nyc);
fprintf('avg temperature of DEN is %.1f\n\n', ans_den);

fprintf('(b):\n');
nyc_count = 0; den_count = 0;
high_NYC = sum(NYC > ans_nyc);
high_DEN = sum(DEN > ans_den);
fprintf('the number of days warmer than avg in NYC is %d days \n', high_NYC);
fprintf('the number of days warmer than avg in DEN is %d days \n\n', high_DEN);

fprintf('(c):\n');
dif = sum(DEN > NYC);
fprintf('DEN is warmer than NYC for %d days\n\n', dif);



%%
%Q11
fprintf('Q11 \n\n');

fprintf('n = 4일 때,\n');
n = 4;
array11 = zeros(n);
for i = 1:n
    for j=1:i 
        array11(i, j) = factorial(i-1)/(factorial(j-1) * factorial(i-j));
    end
end
disp(array11);

fprintf('n = 5일 때,\n');
n = 5;
array11 = zeros(n);
for i = 1:n
    for j=1:i 
        array11(i, j) = factorial(i-1)/(factorial(j-1) * factorial(i-j));
    end
end
disp(array11);

fprintf('n = 6일 때,\n');
n = 6;
array11 = zeros(n);
for i = 1:n
    for j=1:i 
        array11(i, j) = factorial(i-1)/(factorial(j-1) * factorial(i-j));
    end
end
disp(array11);

fprintf('n = 7일 때,\n');
n = 7;
array11 = zeros(n);
for i = 1:n
    for j=1:i 
        array11(i, j) = factorial(i-1)/(factorial(j-1) * factorial(i-j));
    end
end
disp(array11);




%%
%Q12
fprintf('Q12\n\n');

fibo = [0, 1, 1];
a= 0; b =1; c = 1;

for i=4:25
    new = a + b + c;
    a = b; b = c; c = new;
    fibo = [fibo, new];
end

disp(fibo);


%%
%Q13
fprintf('Q13\n\n');

fibo2 = [1, 1];

a = 1; b = 1;
fprintf('n = 10 \n\n');
for i = 3:10
    new = a + b;
    a = b; b = new;
    fibo2 = [fibo2, new];
end

fibo_inv = [1./fibo2];
sum_fibo = sum(fibo_inv);
fprintf('the answer is %f \n\n', sum_fibo);

a = 1; b = 1;
fibo2 = [1, 1];
fprintf('n = 50\n\n');
for i = 3:50
    new = a + b;
    a = b; b = new;
    fibo2 = [fibo2, new];
end

fibo_inv = [1./fibo2];
sum_fibo = sum(fibo_inv);
fprintf('the answer is %f \n\n', sum_fibo);

a = 1; b = 1;
fibo2 = [1, 1];
fprintf('n = 100\n\n');
for i = 3:100
    new = a + b;
    a = b; b = new;
    fibo2 = [fibo2, new];
end

fibo_inv = [1./fibo2];
sum_fibo = sum(fibo_inv);
fprintf('the answer is %f \n\n', sum_fibo);


%%
%Q14
format long 

fprintf('Q14 \n\n');
const = (pi^3)/32;
fprintf('좌변의 값은(pi^3/32)\n');
disp(const);

sum14_10 = 0;
for i = 0:10
    num14 = ((-1)^i)/(2*i + 1)^3;
    sum14_10 = sum14_10 + num14;
end
fprintf('n = 10일 때, 우변의 값은'); sum14_10
fprintf('\n');

sum14_100 = 0;
for i = 0:100
    num14 = ((-1)^i)/(2*i + 1)^3;
    sum14_100 = sum14_100 + num14;
end
fprintf('n = 100일 때, 우변의 값은'); sum14_100
fprintf('\n');

sum14_1000 = 0;
for i = 0:1000
    num14 = ((-1)^i)/(2*i + 1)^3;
    sum14_1000 = sum14_1000 + num14;
end
fprintf('n = 1000일 때, 우변의 값은'); sum14_1000
fprintf('\n');



%%
%Q15
format long

fprintf('Q15 \n\n');

fprintf('n = 5일 때,\n');
n = 5;

S = 0;
Sn = 1;

for i = 1:n
    S = sqrt(2 + S);
    Sn = Sn * S / 2; 
end

ans_15 = 2 / Sn;
fprintf('우변의 값은 %.10f\n\n', ans_15);

%

fprintf('n = 10일 때,\n');
n = 10;

S = 0;
Sn = 1;

for i = 1:n
    S = sqrt(2 + S);
    Sn = Sn * S / 2; 
end

ans_15 = 2 / Sn;
fprintf('우변의 값은 %.10f\n\n', ans_15);

%

fprintf('n = 40일 때,\n');
n = 40;

S = 0;
Sn = 1;

for i = 1:n
    S = sqrt(2 + S);
    Sn = Sn * S / 2; 
end

ans_15 = 2 / Sn;
fprintf('우변의 값은 %.10f\n\n', ans_15);
%%
%Q16
fprintf('\nQ16 \n\n');
fprintf('(a) : \n');
rand16 = randi([10, 30], 1, 20);
disp(rand16);
ran = length(rand16);

fprintf('(b): \n');
for i = 1:ran
    if  rem(rand16(i), 2) ~= 0
        rand16(i) = randi([10 30]);
    end
end
fprintf('한번 교체한 새 배열은\n');
disp(rand16);

fprintf('(c): \n');
rand16_2 = randi([10, 30], 1, 20);
disp(rand16_2);
for i = 1:50
    cnt16 = 0;

    for j = 1:ran
        if rem(rand16_2(j), 2) ~= 0
            rand16_2(j) = randi([10 30]);
            cnt16 = -1;
        end
    end

    if cnt16 == 0
        break
    end
end

fprintf('교체가 끝난 새 배열은\n');
disp(rand16_2);
fprintf('반복 횟수는 %d회 입니다', i);

fprintf('\n\n\n');

%%
%Q17
format short
fprintf('Q17\n\n');
x = [9 -1.5 13.4 13.3 -2.1 4.6 1.1 5 -6.1 10 0.2];
%삽입정렬!
n17 = length(x);

for i = 2:n17    
    while((i > 1) && (x(i) < x(i-1)))
        temp = x(i);
        x(i) = x(i-1);
        x(i-1) = temp;
        i = i-1;
    end
end
sorted = x;
disp(x);





%%
%Q18

limit = 50;
c = 0; m = 2;
fprintf('Q18 \n\n');
fprintf('Pythagorean Theorem\n');
array18 = [0 0 0];

while c<limit
    for n = 1:m
        a = m * m - n * n;
        b = 2*m*n;
        c = m * m + n * n;

        if c > 50
            break
        end
       
        if a > 0 && b > 0 && c > 0
            if a > b
                temp = a;
                a = b;
                b = temp;
            end
            array18 = [array18 ; [a b c]];
        end
    end
    m = m + 1;
end

array18(1, :) = [];
disp(array18);


%%
%Q19
fprintf('Q19 \n\n');

fprintf('조건에 부합하는 수들은\n');
for i = 100:999
    a = fix(i/100);
    b = fix((i - 100*a)/10);
    c = i - (100*a) - (10*b);

    if a*b*c == 6*(a + b + c)
        fprintf('%d \n', i);
    end
end
fprintf('\n');

%%
%Q24

fprintf('Q24 \n\n');

S = [72 81 44 68 90 53 80 75 74 65 50 92 85 69 41 73 70 86 61 65 79 94 69];
Av = round(mean(S));
Sd = round(std(S));
S_len = length(S);
grades = [];

fprintf('Average is %d, Standard Deviation is %d\n\n', Av, Sd);
fprintf('Score      grade\n');

for i =1:S_len
    if S(i) >= Av + 1.3*Sd
        fprintf('%d%% Letter Grade A \n', S(i));
    elseif S(i) >= Av + 0.5*Sd
        fprintf('%d%% Letter Grade B \n', S(i));
    elseif S(i) >= Av - 0.5*Sd
        fprintf('%d%% Letter Grade C \n', S(i));
    elseif S(i) >= Av - 1.3*Sd
        fprintf('%d%% Letter Grade D \n', S(i));
    else
        fprintf('%d%% Letter Grade F \n', S(i));
    end
end
fprintf('\n');


%%
%Q25

fprintf('Q25\n\n');

fprintf('(a):\n');
a = 2;
x = 3.5;

%n = 0, S0 = 1;
S = 1;

for n = 1:100
    Cn = log(a)^n / factorial(n)*(x^n);
    Sn = S + Cn;

    if abs((Sn - S) / S) < 0.000001
        S = Sn;
        break
    end
    S = Sn;

end
fprintf('좌변의 값은 %.20f \n', a^x);
fprintf('우변의 값은 %.20f \n\n', S);


fprintf('(b):\n');
a = 6.3;
x = 1.7;

%n = 0, S0 = 1;
S = 1;

for n = 1:100
    Cn = log(a)^n / factorial(n)*(x^n);
    Sn = S + Cn;

    if abs((Sn - S) / S) < 0.000001
        S = Sn;
        break
    end
    S = Sn;

end
fprintf('좌변의 값은 %.20f \n', a^x);
fprintf('우변의 값은 %.20f \n\n', S);


%%
%Q26
fprintf('Q26 \n\n');

for i = 15:45
    val = sum(1:i);
    if val >= 100 && val <=1000
        a = fix(val/100);
        b = fix((val - 100*a)/10);
        c = val - (100*a) - (10*b);
        
        if a == b && b == c
            fprintf('값이 %d가 되는 n은 %d\n\n', val, i);
        end
    end
end


%%
%Q28
fprintf('Q28 \n\n');

fprintf('(a): 6ft 2in tall, weight 180lb\n');
H = 6*12 + 2;
W = 180;
BMI = 703 * W / (H^2);
classified = 'ans';

if BMI < 18.5
    classified = 'Underweight';
elseif BMI <= 24.9
    classified = 'Normal';
elseif BMI <= 29.9
    classified = 'Overweight';
else
    classified = 'Obese';
end
fprintf('Your BMI is %.2f, which classifies you as %s \n\n', BMI, classified);


%
fprintf('(b): 5ft 1in tall, weight 150lb\n');
H = 5*12 + 1;
W = 150;
BMI = 703 * W / (H^2);

if BMI < 18.5
    classified = 'Underweight';
elseif BMI <= 24.9
    classified = 'Normal';
elseif BMI <= 29.9
    classified = 'Overweight';
else
    classified = 'Obese';
end
fprintf('Your BMI is %.2f, which classifies you as %s \n\n', BMI, classified);


%%
%Q29

fprintf('Q29\n\n');
fprintf('(a) : Sedan, 10days, 769miles\n');
Type = 'Sedan'; days = 10; miles = 769;
pay = 0;

switch(Type)
    case 'Sedan'
        if days >= 1 && days <= 6
            if miles <= days * 80
                pay = 79 * days;
            else
                pay = 79*days + (miles - (days * 80))*0.69;
            end
        
        elseif days <=29
            if miles <= days * 100
                pay = 69 * days;
            else
                pay = 69 * days + (miles - (days * 100))*0.59;
            end

        elseif days >= 30
            if miles <= days * 120
                pay = 59 * days;
            else
                pay = 59 * days + (miles - (days * 120))*0.49;
            end

        else
            fprintf('Out of range error \n');
        end

    case 'SUV'
        if days >= 1 && days <= 6
            if miles <= days * 80
                pay = 84 * days;
            else
                pay = 84*days + (miles - (days * 80))*0.74;
            end
        
        elseif days <=29
            if miles <= days * 100
                pay = 74 * days;
            else
                pay = 74 * days + (miles - (days * 100))*0.64;
            end

        elseif days >= 30
            if miles <= days * 120
                pay = 64 * days;
            else
                pay = 64 * days + (miles - (days * 120))*0.54;
            end

        else
            fprintf('Out of range error \n');
        end

end
fprintf('You have to pay %.2f dollars \n\n', pay);


%
fprintf('(b) : SUV, 32days, 4056miles\n');
Type = 'SUV'; days = 32; miles = 4056;
pay = 0;

switch(Type)
    case 'Sedan'
        if days >= 1 && days <= 6
            if miles <= days * 80
                pay = 79 * days;
            else
                pay = 79*days + (miles - (days * 80))*0.69;
            end
        
        elseif days <=29
            if miles <= days * 100
                pay = 69 * days;
            else
                pay = 69 * days + (miles - (days * 100))*0.59;
            end

        elseif days >= 30
            if miles <= days * 120
                pay = 59 * days;
            else
                pay = 59 * days + (miles - (days * 120))*0.49;
            end

        else
            fprintf('Out of range error \n');
        end

    case 'SUV'
        if days >= 1 && days <= 6
            if miles <= days * 80
                pay = 84 * days;
            else
                pay = 84*days + (miles - (days * 80))*0.74;
            end
        
        elseif days <=29
            if miles <= days * 100
                pay = 74 * days;
            else
                pay = 74 * days + (miles - (days * 100))*0.64;
            end

        elseif days >= 30
            if miles <= days * 120
                pay = 64 * days;
            else
                pay = 64 * days + (miles - (days * 120))*0.54;
            end

        else
            fprintf('Out of range error \n');
        end

end
fprintf('You have to pay %.2f dollars \n\n', pay);

%

fprintf('(c) : Sedan, 3days, 511miles\n');
Type = 'Sedan'; days = 3; miles = 511;
pay = 0;

switch(Type)
    case 'Sedan'
        if days >= 1 && days <= 6
            if miles <= days * 80
                pay = 79 * days;
            else
                pay = 79*days + (miles - (days * 80))*0.69;
            end
        
        elseif days <=29
            if miles <= days * 100
                pay = 69 * days;
            else
                pay = 69 * days + (miles - (days * 100))*0.59;
            end

        elseif days >= 30
            if miles <= days * 120
                pay = 59 * days;
            else
                pay = 59 * days + (miles - (days * 120))*0.49;
            end

        else
            fprintf('Out of range error \n');
        end

    case 'SUV'
        if days >= 1 && days <= 6
            if miles <= days * 80
                pay = 84 * days;
            else
                pay = 84*days + (miles - (days * 80))*0.74;
            end
        
        elseif days <=29
            if miles <= days * 100
                pay = 74 * days;
            else
                pay = 74 * days + (miles - (days * 100))*0.64;
            end

        elseif days >= 30
            if miles <= days * 120
                pay = 64 * days;
            else
                pay = 64 * days + (miles - (days * 120))*0.54;
            end

        else
            fprintf('Out of range error \n');
        end

end
fprintf('You have to pay %.2f dollars \n\n', pay);



%%
%Q33
%정말 함수 쓰면... 안되나요 

fprintf('\nQ33\n\n');
fprintf('(a); Convert 55in.2 to cm.2\n');

input = 'inch'; output = 'cm';
in_num = 55;
m_num = 0;
out_num = 0;

switch(input)
    case 'm'
        m_num = in_num;
    case 'cm'
        m_num = in_num / 10000;
    case 'inch'
        m_num = in_num / 1550;
    case 'ft'
        m_num = in_num / 10.76391;
    case 'yd'
        m_num = in_num / 1.19599;
    case 'acre'
        m_num = in_num / 0.000247;
end

switch(output)
    case 'm'
        out_num = m_num;
    case 'cm'
        out_num = m_num * 10000;
    case 'inch'
        out_num = m_num * 1550;
    case 'ft'
        out_num = m_num * 10.76391;
    case 'yd'
        out_num = m_num * 1.19599;
    case 'acre'
        out_num = m_num * 0.000247;
end

fprintf('The answer is %.6f %s \n\n', out_num, output);

%
fprintf('(b); Convert 2400ft.2 to m.2\n');

input = 'ft'; output = 'm';
in_num = 2400;
m_num = 0;
out_num = 0;

switch(input)
    case 'm'
        m_num = in_num;
    case 'cm'
        m_num = in_num / 10000;
    case 'inch'
        m_num = in_num / 1550;
    case 'ft'
        m_num = in_num / 10.76391;
    case 'yd'
        m_num = in_num / 1.19599;
    case 'acre'
        m_num = in_num / 0.000247;
end

switch(output)
    case 'm'
        out_num = m_num;
    case 'cm'
        out_num = m_num * 10000;
    case 'inch'
        out_num = m_num * 1550;
    case 'ft'
        out_num = m_num * 10.76391;
    case 'yd'
        out_num = m_num * 1.19599;
    case 'acre'
        out_num = m_num * 0.000247;
end

fprintf('The answer is %.6f %s \n\n', out_num, output);


%
fprintf('(c); Convert 300cm.2 to yd.2\n');

input = 'cm'; output = 'yd';
in_num = 300;
m_num = 0;
out_num = 0;

switch(input)
    case 'm'
        m_num = in_num;
    case 'cm'
        m_num = in_num / 10000;
    case 'inch'
        m_num = in_num / 1550;
    case 'ft'
        m_num = in_num / 10.76391;
    case 'yd'
        m_num = in_num / 1.19599;
    case 'acre'
        m_num = in_num / 0.000247;
end

switch(output)
    case 'm'
        out_num = m_num;
    case 'cm'
        out_num = m_num * 10000;
    case 'inch'
        out_num = m_num * 1550;
    case 'ft'
        out_num = m_num * 10.76391;
    case 'yd'
        out_num = m_num * 1.19599;
    case 'acre'
        out_num = m_num * 0.000247;
end

fprintf('The answer is %.6f %s \n\n', out_num, output);




%%DONE!
