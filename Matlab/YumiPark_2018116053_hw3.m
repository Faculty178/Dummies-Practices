%% 3.9 Problems
%Q1
x1 = 0:7;
y1 = x1.^ - 2-x1./(x1+3)

%x = 0일때, 발생하는 Inf는 고칠 필요가 없는지?

%%
%Q2

x2 = 1.5:0.5:4;
y2 = x2.^4.*exp(-x2)

%%
%Q3

x3 = -2:0.5:2;
y3 = (x3 + x3.*sqrt(x3+3)).*(1 + 2.*(x3.^2)) - x3.^3


%%
%Q4

x4 = 15:10:65;
y4 = (4.*sind(x4) + 6)./((cosd(x4).^2 + sind(x4)).^2)

%%
%Q5
format bank
V5 = 4000:-500:1000;
r5 = (3/(4*pi)*V5).^(1/3);
S5 = (4*pi).*(r5.^2);

%rounded to the nearest tenth of an inch
%inch???

V5 = V5(:)
r5 = round(r5(:)*10)/10;
S5 = round(S5(:)*10)/10;

ansQ5 = [r5 V5 S5]


%%
%Q6
format default

%(a) determine F theta
theta6 = 5:5:35;
mu = 0.35;

fprintf('\nQ6\n(a) : \n')
F_theta = (70*mu)./(mu*sind(theta6) + cosd(theta6))

%(b)determine where F is minimum 
d_theta6 = 5:0.01:35;
DF_theta = (70*mu)./(mu*sind(d_theta6) + cosd(d_theta6));

[DF , i] = min(DF_theta);

fprintf('(b) : \n')
Fmin = DF_theta(i)
where = d_theta6(i)

fprintf('\n\n')

%%
%Q7
format bank

years = 0:5:30;
interest = 0.06;
L = 100000;
n = 30;

%헷갈려...
dan = (1 + interest/12);
B = (L* (dan^(12*n) - dan.^(12*years))) ./ (dan^(12*n) -1);

ansQ7 = [years;B]

fprintf('\n\n')


%%
%Q8
format default

U8 = [-5.6 11 -14];
Q8_length = sqrt(sum(U8.*U8))

fprintf('\n\n\n')


%%
%Q9

fprintf('Q9\n(a)\n')
U9 = [4 13 -7]

fprintf('(b) \n')
Lu = sqrt(sum(U9.*U9))

fprintf('(c) \n')
LUn = U9 / Lu

fprintf('(d) \n')
L_Un = sqrt(sum(LUn.*LUn))



%%
%Q10
format bank

U10_a = [3.2 -6.8 9];
U10_b = [-4  2 7];

Len_a = sqrt(sum(U10_a.*U10_a));
Len_b = sqrt(sum(U10_b.*U10_b));

%acosd???

fprintf('\n');
ansQ10 = acosd(sum(U10_a.*U10_b) / (Len_a * Len_b))



%%
%Q14
format default

v14 = [5 4 3 2];

fprintf('\n\nQ14\n\n(a)\n')
a14 = 1./(v14 +v14)

fprintf('(b)\n')
b14 = v14.^v14

fprintf('(c)\n')
c14 = (v14.^2) ./ (sqrt(v14))

fprintf('(d) \n')
d14 = (v14.^2) ./ (v14.^v14)




%%
%Q15

fprintf('\n\nQ15\n\n')
x15 = 0.5:0.5:2.5;
y15 = 0.8:0.8:4;

fprintf('(a)\n')
a15 = (x15.^2) + (2.*x15.*y15)

fprintf('(b)\n')
b15 = x15.*y15.*exp(y15./x15) - ((x15.^4).*(y15.^3)+8.5).^(1/3)



%%
%Q16
%format default

r16 = 1.6 *(10^3);
s16 = 14.2;
t16 = [1 2 3 4 5];
x16 = [2 4 6 8 10];
y16 = [3 6 9 12 15];

fprintf('\n\nQ16\n\n(a)\n')
G16 = t16.*x16 + (r16/(s16^2)).*((y16.^2) - x16).*t16

fprintf('(b) \n')
R16 = r16*((t16.*(-1.*x16))+ y16.*(t16.^2))./15 - (s16^2).*(y16 - 0.5.*(x16.^2)).*t16


%%
%Q18

r18a = [2.5 8 -5];
r18b = [-1 6 3];
%-1i? -1 * i?
%cross product > cross()
%dot product > dot() 근데 dot는 어디서쓰는지?? 

ra_Len = sqrt(dot(r18a, r18a));
rb_Len = sqrt(dot(r18b, r18b));
r_cross = cross(r18a, r18b);
cross_Len = sqrt(sum(r_cross.*r_cross));

fprintf('\n');
ansQ18 = asind(cross_Len/(ra_Len*rb_Len))


%%
%Q19
 
%mass X Y Z
table = [0.5 -10 8 32; 0.8 -18 6 19; 0.2 -7 11 2; 1.1 5 12 -9; 0.4 0 -8 -6; 0.9 25 -20 8];

%calculate the center of mass of the particles
mass_total = sum(table(:,1));
x_sigma = sum(table(:,1).*table(:,2));
y_sigma = sum(table(:,1).*table(:,3));
z_sigma = sum(table(:,1).*table(:,4));

x_bar = x_sigma / mass_total;
y_bar = y_sigma / mass_total;
z_bar = z_sigma / mass_total;

fprintf("\n\nQ19\n\n")
fprintf("Center coordinate is x: %f, y: %f, z: %f \n", x_bar, y_bar, z_bar)
fprintf("Total mass is : %f\n", mass_total)




%%
%Q20
a20 = [7 -4 6];
b20 = [-4 7 5];
c20 = [5 -6 8];

fprintf('\n\n');

left_Q20 = cross(a20, cross(b20, c20))
right_Q20 = b20.*dot(a20, c20) - c20.*(dot(a20, b20))



%%
%Q21

theta21 = 15:10:75;
g21 = 9.81;
v_const = 260;

fprintf('\n\nQ21\n');

fprintf("s(theta) is: \n")
s_theta21 = ((v_const^2)/g21)*sind(2*theta21)
fprintf("h(theta) is: \n")
h_theta21 = ((v_const^2)*(sind(2*theta21).^2))/(2*g21)



%%
%Q23
format long

a23 = 1:1:5;
b23 = 1:1:15;
c23 = 1:1:30;

fprintf('Q23\n\n');
fprintf('(a):\n');
a_ans = (a23.^2)./(2.^a23)
a_sum = sum(a_ans)

fprintf('\n(b):\n');
b_ans = (b23.^2)./(2.^b23)
b_sum = sum(b_ans)

fprintf('\n(c):\n');
c_ans = (c23.^2)./(2.^c23)
c_sum = sum(c_ans)



%%
%Q26
format long
x26 = [1.0 0.1 0.01 0.001 0.0001];

fprintf('\n\nQ26 : \n');
y26 = 5*sin(6*x26)./ (4*x26)


%%
%Q31
format default
A31 = randi(5,3);

fprintf('\n\nQ31: \n');
fprintf('(a): A.^A\n');
q31_a = A31.^A31

fprintf('(b): A.*A\n');
q31_b = A31.*A31

fprintf('(c): A*A-1\n');
q31_c = A31*A31-1

fprintf('(d): A./A \n');
q31_d = A31./A31

fprintf('(e): det(A) \n');
q31_e = det(A31)

fprintf('(f): inv(A) \n');
q31_f = inv(A31)
fprintf('역행렬이 존재하지 않습니다\n');


%%
%Q33
format bank
%solve()는 사용하면 틀리나요?
unknown33 = [-2 5 7; 3 -6 2; 9 -3 8];
num33 = [-17.5; 40.6; 56.2];
ans33 = unknown33\num33;

fprintf('\n\nQ33 : solve three linear equations\n');
ans33

%%
%Q36
unknown36 = [2 -4 5 -3.5 1.8 4; -1.5 3 4 -1 -2 5; 5 1 -6 3 -2 2; 
    1.2 -2 3 4 -1 4; 4 1 -2 -3 -4 1.5; 3 1 -1 4 -2 -4];
num36 = [52.52; -21.1; -27.6; 9.16; -17.9; -16.2];
ans36 = unknown36\num36;

fprintf('Q36: solve six linear equations\n');
ans36


