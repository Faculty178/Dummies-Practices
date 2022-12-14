fprintf('(Q1): Please find the answer\n')
format compact
a1 = round(((21 + nthroot(50, 4))/(14*2) + log10(489400))*10)/10
b1 = round(((34.2-1.5*pi)*(exp(4)+sqrt(40))*(log(3)+1.8))*10)/10
c1 = round(((log(9)/log(4))*exp(3) + ((log(6)/log(4) + 0.7)*(nthroot(80, 5))))*10)/10
d1 = round(((sin(0.3 * pi)/(cos(pi/4)))*exp(2) + tand(72))*10)/10

fprintf('\n\n')


%%
%
fprintf('(Q2):\n')
total = 831; airplane_seat =40; train_seat = 8; 
airplane = fix(total / airplane_seat);
leftover = total - (airplane*airplane_seat);
train_empty_seat = leftover - (fix(leftover/train_seat)*train_seat);
fprintf('필요한 비행기의 수는 : %d\n', airplane)
fprintf('남는 자리의 수는: %d\n\n', train_empty_seat)

%%
fprintf('(Q3): \n')
vC = 2:5:70;
VCodd = vC([1:2:13])
vCeven = vC([2:2:14])
fprintf('\n\n')


%%
fprintf('(Q4): \n')
v1 = 20:4:44;
v2 = 50:3:70;
new_vector = [v1; v2]
%reverse order of row direction



%%
fprintf('(Q5): \n')
x5 = [0.2 0.4 0.8 0.9 2.5 2 1.2 1.3];
y5 = [2 8 9 3 4 5 1 6];
z5 = [11 10 13 18 16 15 12 19];

fprintf('(a)\n')
a5 = round(((x5 + nthroot((x5+z5),3)).*(10.^y5))*10)/10
fprintf('(b)\n')
b5 = round((((sin(4*z5) + (cos(y5 +2).^2).*exp(3*x5)))./(x5 + y5))*10)/10


%%
%
fprintf('(Q6): \n')
u6 = [5 -10 -8];
v6 = [2.5 4 -9];
len = sqrt(sum(u6.*u6));
unit_6 = u6/len
cross_6 = cross(u6, v6)


%%
%
fprintf('(Q7): \n')
vars = [-3 8 4; 2 6 -3; 9 -4 -2];
nums = [15; 30; 20];
ans_Q7 = vars\nums


%%
%
format bank
fprintf('(Q8): \n')
fprintf('Time...\n\n')
A = [2^4 2^3 2^2 2 1; 
    1 1 1 1 1; 
    1.2^4 1.2^3 1.2^2 1.2^1 1;
    -8^4 -8^3 -8^2 -8 1; 
    4.5^4 4.5^3 4.5^2 4.5 1];
B = [9; 3; 19; 13; 5];
x = A\B;
fprintf('a = %f, b = %f, c = %f, d = %f, e = %f', x(1), x(2), x(3), x(4), x(5))