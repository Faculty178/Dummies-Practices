%%
% true / false switch

switch 6*4 > 32-3
    case 1
        fprintf('true \n');
    case 0
        fprintf('false \n');
    otherwise
        fprintf('error\n');
end



%%
% zero / nonzero switch

switch 0|7 & 9 & -3
    case 1
        fprintf('Nonzero \n');
    case 0
        fprintf('Zero \n');
    otherwise
        fprintf('error\n');
end



%%
%
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

%Template Yes
% if, switch 문 옆에 괄호치지 말 것
% 끝에 end를 미리미리 붙여둘 것




%%
%

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
