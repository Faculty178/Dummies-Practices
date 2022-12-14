%Sample Problem 3-2
F1 = 400; F2 = 500; F3= 700;
F1a = -20; F2a = 30; F3a = 143;

F1xy = F1*[cosd(F1a) sind(F1a)];
F2xy = F2*[cosd(F2a) sind(F2a)];
F3xy = F3*[cosd(F3a) sind(F3a)];

Fxtotal = F1xy(1) + F2xy(1) + F3xy(1);
Fytotal = F1xy(2) + F2xy(2) + F3xy(2);

Ftotal = sqrt(Fxtotal^2 + Fytotal^2)
Ftotal_a = atand(Fytotal/Fxtotal)

%%
%Sample Problem 3-4

v1 = 20; v2 = 12; v3 = 40;
r1 = 18; r2 = 10; r3 = 16;
r4 = 6; r5 = 15; r6 = 8;
r7 = 12; r8 = 14;

A = [-(r1+r2+r3) r2 r3 0 ; r2 -(r2+r4+r5+r7) r4 r1 ; r3 r4 -(r3+r4+r6) r6 ; 0 r7 r6 -(r6+r7+r8)];
B = [-v1 ; 0; v2; -v3];

I = A\B


%%
%과제는 3.9 Problems
%계산을 고민하면서 풀 것
%과제에 닉네임 넣어서 제출할 것
%과제 마감 31일까지
%주의사항 사진 찍어뒀음!

