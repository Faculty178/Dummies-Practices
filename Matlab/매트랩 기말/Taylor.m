%% 
% Q25 Taylor Series

%어지간하면 a, x는 값으로 주어질 것 같다
a = 2;
x = 3.5;

% or input('a를 / x를 입력하시오');
%점화식

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

% Cn이 계산할 식의 값
% Sn이 누적합. 합한 후 S에 뒤집어 씌워줘야 하는게(S = Sn) 핵심 
% if문 안이 오류 계산해서 break조건을 주는건데, 이 부분은 문제에 따라 달라질 수 있음
