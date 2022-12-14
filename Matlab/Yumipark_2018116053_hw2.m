%%
% Q1 - Q4
a = [9, 1, 3^2, 7/4, 0, 2.25*8.5, 0.8, sin(pi/8)]

b = [sqrt(5.2^3), 6.71*10^3, (3 + 5.1^2)*cosd(53), 15.8, nthroot(90, 3), sin(pi/3)/tand(20)]

c = [2.1*10^-2 ; sin(1.7*pi) ; 28.5 ; 2.7^(4/3) ; exp(3)]

d = [0.75 * 5.2^0.7 ; 11.1 ; nthroot(60, 3) ; tan((10*pi)/11) ; cos(5)^2 ; 0.116]

%%
%Q5
x = 3.4; y = 5.8;
e = [x/y, x+y, x^y, x*y, y^2, x]

%%
%Q6
c = 4.5 ; d = 2.8;
f = [d^2 ; c ; c+d; c^d; d]

%%
%Q7
g = 3:4:27

%%
%Q12
Fours = linspace(4, 4, 9)

%%
%Q13
Sevens(1: 7) = 7

%%
%Q14
P(8) = 5.9
%PP = [zeros(1,7), 5.9]

%%
%Q15
q(6:9) = 8.1

%%
%Q16
%-4~8 간격3 14-30 간격 4
R = [-4:3:8 14:4:30]

%%
%Q19
A = 4:3:13 ; B = [14:-2:6]';

%19(a)
C = [B' A]
%19(b)
D = [A';B]

%%
%Q21
vC = 2:3:38;

%Q21a 
vCodd = vC([1:2:13])
%Q21b
vCeven = vC([2:2:12])


%%
%Q22
vD = 20:4:44; vE = 50:3:71;

%Q22a
%vd 2-5 / ve 4-7 
vDE = [vD(2:5) vE(4:7)]

%Q22b
%ve 65432 / vd 4321
vED = [vE(6:-1:2) vD(4:-1:1)]


%%
%Q23
vF = 5:7:61;

%vFrev > vF Reverse Order 
vFrev = vF([9: -1: 1])
%vFrev2 = flip(vF)
%flip 옵션을 설정해서 바꾸는 것도 가능 행방향 - 열방향

%%
%Q24 - Create matrix
A = [1:7; 7:-1:1 ; linspace(2, 9, 7)]


%%
%Q27 - Create matrix using one command
D = [ones(3, 4); 8:-2:2]


%%
%Q29 - Create matrix using one command 
F = [zeros(2,6); zeros(1, 2) 8:-2:2]
%F2(3,3:6) = 8:-2:2

%%
%Q30
G = [ones(3,5); zeros(3) ones(3, 2)]

%%
%Q32
a = [5 8 -1 0 2]; b = [4 1 9 -2 3]; c = [-3 5 0 6 1];

%Q32(a)
Ma = [c;b;a]

%Q32(b)
Mb = [c' b' a']


%%
%Q39

G = [0.1:0.1:0.7; 10:-1:4; 0:0.2:1.2; 5:-2:-7]

%Q39(a)
%row 1 3 4 column 1 2 6 7 
Ma = G([1 3 4], [1 2 6 7])

%Q39(b)
%row 1 2 3 column 2 4 6
Mb = G([1 2 3], [2 4 6])


%%
%Q44
%(a)
A44 = [eye(3) eye(3)]

%(b)
B44 = [zeros(2, 3) ones(2, 2)]

%(c)
C44 = [ones(3, 1) zeros(3, 2) [ones(1); zeros(2, 1)]]


%%
%Q45 

%(a)
A45 = eye(2)

%(b)
B45 = ones(1, 2)

%(c)
C45 = zeros(3, 3)

%D question
D45 = [C45 [A45; B45]]



