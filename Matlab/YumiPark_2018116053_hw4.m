%%
%Q1

%Weight = input('Enter your weight (pounds): ');
%Height = input('Enter your height (inches): ');
Weight = 162; Height = 68;
BMI = round(703*Weight/(Height^2)*10)/10;
fprintf('Q1\n');
fprintf('The BMI is %4.1f \n\n', BMI);

%%
%Q2

%p = input('Enter the pressure (units of millibars): ');
p = 394; 
h = round(145366.45*(1-(p/1013.25)^0.190289));
fprintf('Q2\n');
fprintf('The altitude is: %4.0f  ft.\n\n', h);
%답 포맷 적는걸 기말 풀때 주의해야 함


%%
%Q4

%h_life = input('Enter the half-life (years): ');
%A_zero = input('Enter the current amount (lb): ');
%time = input('Enter the years (years): ');

h_life = 24110; A_zero = 50; time = 500; 
const_k = log(0.5)/(time*h_life);
A_ans = A_zero*exp((-1*const_k)*time);

fprintf(['Q4\n']);
fprintf('The amount of the material after %7.0f years is %6.3f lb \n\n', time, A_ans);
%손으로 한번 식 써보고 하세요 값 틀린거 실ㄹ화? 


%%
%Q6

theta = 0:10:90;
sin_a = asind((1+3*cosd(theta))./sqrt((1+3*cosd(theta)).^2 + (3 - 3*sind(theta)).^2));
Force = (300*4.5*sind(theta)) ./ (3*cosd(sin_a - theta));
table = [theta' Force'];
fprintf('Q6\n');
fprintf('      Deg     Force   \n');
disp(table);
fprintf('\n');
%fprintf로 table을 출력하면 행 순서로 읽으니 표를 뒤집어야 함
%그냥 쭉 disp쓸게요 

%%
%Q7

%grades = input('Enter vector grades : ');

grades = [93 77 51 62 99 41 82 77 71 68 100 46 78 80 83];
len = length(grades); avg = round(mean(grades)*10)/10;
deviation = round(std(grades)*10)/10;
fprintf('Q7\n\n');
fprintf('There are %i grades. \n', len);
fprintf('The average grade is %.1f \n', avg);
fprintf('The standard deviation is %.1f \n\n', deviation);


%%
%Q9

%P = input('Enter the amount of the initial investments (dollar?) : ');
%Years = input('Enter the years (years) : ');
%r = input('Enter the interest rate (%) : ');
%n = input('Enter the compounded years (years) : ');

P = 20000; Years = 18; interest = 3.5; n = 6;
V = P*(1 + (interest/100)/n)^(n*Years);

fprintf('Q9\n\n');
fprintf('The value of a %.2f investment at a yearly interest rate of %.2f%% \n', P, interest );
fprintf('compounded %.0f times per year after %.0f years is $ %.2f \n\n', n, Years, V);

%점 왜 찍은겨............. 18(O) 1.8(X)

%%
%Q11
format short g
altitude = -500:500:10000;
p = 29.921*(1-6.8753e-6*altitude);
Tb = 49.161*(log(p)) + 44.932;

fprintf('Q11\n\n');
table_2 = [altitude' Tb'];
fprintf('  Altitude     Temperature\n');
disp(table_2);

fprintf('\n\n');
%disp할 때 단위표시랑 띄워쓰기랑... 이런거 좀 자세하게 할 것 


%%
%Q15
format default
width = 10000; height = 3000; v_run = 8.6; v_swim = 3.9;
x = 0:5000;

lon = sqrt(height^2 + x.^2);
time = ((width - x)./v_run) + (lon./v_swim);
[t_min, i] = min(time);
x_min = x(i);
fprintf('Q15\n\n');
fprintf('t_min : %f\n i : %f\n x_min : %f\n\n',t_min, i, x_min);

%인덱스 반환법 숙지해둘것 



%%
%Q18

C= 13.83; Eg = 0.67; k = 8.62e-5;
%T = xlsread('Q18_data.xlsx');
T = [400 435 475 500 520 545];
sig = exp(C - Eg ./ (2 * k * T));

table_3 = [T sig];
fprintf('Q18\n\n');

fprintf(' %4.0f %5.1f \n\n', table_3');


%%
%Q22
%wha - matrix form?

m = 1:11;
mat = [cosd(50) 1 0 0 0 0 0 0 0 0 0
    sind(50) 0 0 0 0 0 0 0 0 0 0
    0 -1 0 0 0 1 0 0 0 0 0
    -cosd(50) 0 0 1 cosd(41) 0 0 0 0 0 0
    -sind(50) 0 1 0 sind(41) 0 0 0 0 0 0
    0 0 0 0 -cosd(41) -1 0 0 0 1 0
    0 0 0 0 sind(41) 0 1 0 0 0 0
    0 0 0 -1 0 0 0 1 cosd(37) 0 0
    0 0 0 0 0 0 -1 0 -sind(37) 0 0 
    0 0 0 0 0 0 0 0 -cosd(37) -1 0
    0 0 0 0 0 0 0 0 sind(37) 0 1];
nums = [0; 400; 0; 0; 800; 0; 1200; 0; 0; 4933; 0];
ans_22 = mat\nums;
table_4 = [m' ans_22];
fprintf('Q22\n\n');
fprintf('     Member   Force\n');
disp(table_4);
 

%%
%Q23
format short g
m2 =1:7;
mat2 = [ cosd(28.5) 1 0 0 0 0 0
    sind(28.5) 0 0 0 0 0 0
    -cosd(28.5) 0 -cosd(58.4) 0 cosd(58.4) cosd(28.5) 0
    -sind(28.5) 0 -sind(58.4) 0 -sind(58.4) -sind(28.5) 0
    0 0 0 -1 -cosd(58.4) 0 -1
    0 0 0 0 0 sind(28.5) -1
    0 0 0 0 0 -cosd(28.5) -1];
nums2 = [3000; -6521; -3000; 0; 0; -7479; 0];
ans_23 = mat2\nums2;
table_5 = [m2' ans_23];

fprintf('Q23\n\n');
fprintf('     Member   Force\n');
disp(table_5);
%값이 틀렷네???? 어디서 바보짓한듯? 

%%
%Q24

mat_24 = [(-1.2)^3 (-1.2)^2 (-1.2)^1 1
    (0.2)^3 (0.2)^2 (0.2)^1 1
    8 4 2 1
    3.5^3 3.5^2 3.5 1];
nums_24 = [18.8; 5; 16; 15];
ans_24 = mat_24\nums_24;

a = ans_24(1);
b = ans_24(2);
c = ans_24(3);
d = ans_24(4);

fprintf('Q24\n\n');
fprintf('a : %.4f\n b : %.4f \n c: %.4f\n d: %.4f\n\n', a, b, c, d);


%%
%Q25


mat_25 = [(-2.5)^4 (-2.5)^3 (-2.5)^2 (-2.5)^1 1
   (-1.5)^4 (-1.5)^3 (-1.5)^2 (-1.5)^1 1
   (-0.5)^4 (-0.5)^3 (-0.5)^2 (-0.5)^1 1
   1 1 1 1 1
   3^4 3^3 3^2 3 1];
nums_25 = [-62; -7.2; 8.3; 3.7; 7];
ans_25 = mat_25\nums_25;

a = ans_25(1);
b = ans_25(2);
c = ans_25(3);
d = ans_25(4);
e = ans_25(5);
fprintf('Q25\n\n');
fprintf(' a : %.4f\n b : %.4f \n c: %.4f\n d: %.4f\n e: %.4f\n\n', a, b, c, d, e);
%값...어디틀림...? 셤칠때는 정확하게 써...
%소숫점 처리 하라고 하면 %.1f 하던가 round하던가 


%%
%Q26
t = 0.2; c = 1;
K = t*c/0.2;
x = [0.15 0.35 0.5 0.7 0.85];

mat_26 = [sqrt(x(1)/c) x(1)/c (x(1)/c)^2 (x(1)/c)^3 (x(1)/c)^4
    sqrt(x(2)/c) x(2)/c (x(2)/c)^2 (x(2)/c)^3 (x(2)/c)^4
    sqrt(x(3)/c) x(3)/c (x(3)/c)^2 (x(3)/c)^3 (x(3)/c)^4
    sqrt(x(4)/c) x(4)/c (x(4)/c)^2 (x(4)/c)^3 (x(4)/c)^4
    sqrt(x(5)/c) x(5)/c (x(5)/c)^2 (x(5)/c)^3 (x(4)/c)^4];
ans_26 = [0.08909; 0.09914; 0.08823; 0.06107; 0.03421]./K;
co_effi = mat_26\ans_26;

fprintf('Q26\n\n');
fprintf('coefficients\n');
disp(co_effi);


%%
%Q27
%pars=0
mat_27 = [1 2 1 1
    2 3 0 1
    1 4 1 0
    1 3 2 0];
ans_27 = [5;12;11;8];
scores = mat_27\ans_27;

fprintf('Q27\n\n')
fprintf('Each points are \n')
disp(scores);


%%
%Q28
mat_28 = [1 0 0 -1 0 0 0
    1 0 0 0 -1 0 0
    0 1 0 0 0 -1 0
    0 3 0 0 -4 -1 -1
    0 0 1 0 0 0 -2
    0 -1 1 -2 2 0 0
    1 0 0 0 0 0 0];

ans_28 = [0; 0; 0; 0; 0; 0; 1];
varis = mat_28\ans_28;
fprintf('Q28\n\n');
fprintf('When a = 1\n');
disp(varis);
fprintf('>> b, c, f, g is not positive integers\n\n');

ans_282 = [0; 0; 0; 0; 0; 0; 2];
varis_case2 = mat_28\ans_282;
fprintf('When a=2 \n');
disp(varis_case2);
fprintf('>> b, c, f, g is not positive integers\n\n');

ans_283 = [0; 0; 0; 0; 0; 0; 3];
varis_case3 = mat_28\ans_283;
fprintf('When a=3 \n');
disp(varis_case3);
fprintf('all of them are positive integers\n');
fprintf('a = 3, b = 8, c = 8, d = 3, e = 3, f = 8, g = 4\n\n');


%%
%Q29

a = -42.379; b = 2.04901523; c = 10.14333127; d = -0.22475541;
e = -6.83783E-3; f = -5.481717E-2; g = 1.22894E-3; h = 8.5282E-4; i = -1.99E-6;

%T = 80:2:94;
%T_mat = [T; T; T; T; T; T];
%H = [50 81 83 85 88 91 95 99 103
 %   55 81 84 86 89 93 97 101 106
  %  60 82 84 88 91 95 100 105 110
   % 65 82 85 89 93 98 103 108 114
    %70 83 86 90 95 100 106 112 119
    %75 84 88 92 97 103 109 116 124];

%HI = a + (b*T_mat) + (c*H) + (d*T_mat.*H) + (e*T_mat.*(H.^2)) + (f*H.^2) + (g*(T_mat.^2).*H) + (h*T_mat.*(R.^2)) + (i*(T_mat.^2).*(H^.2));
%disp(HI);
%길이가...? 배열 크기가...? 모르겠습니다 





%%
%Q30

ab = 0.05:0.05:0.80;
C = 1 - (ab/2) + (0.326*(ab.^2))./sqrt(1-ab);
table_6 = [ab' C'];

fprintf('Q30 \n\n');
fprintf('      a/b       C\n');
disp(table_6);





