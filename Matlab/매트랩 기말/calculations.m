평균 : mean(valuesname)
산술평균을 수동으로 구해야 한다면 sum(valuesname) / length(valuesname)

분산 : var(valuesname)
표준편차 : std(valuesname)

-----

반올림 round(valuesname, 1)
or 과제 제출했던대로 (round(valuesname)*10) / 10

-----

인덱스 반환법

[t_min, i] = min(time);
x_min = x(i);
// x(i)가 인덱스

-----

//다항방정식 구하기

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


// table_4 = [m' ans_22];

//disp(table_4);

//     Member   Force
//    1.0e+03 *

//     0.0010    0.5222
//     0.0020   -0.3356
//     0.0030    2.4129
//     0.0040    1.7309
//     0.0050   -1.8488
//     0.0060   -0.3356
//     0.0070    2.4129
//     0.0080    4.9330
//     0.0090   -4.0094
//     0.0100   -1.7309
//     0.0110    2.4129

//값을 정확하게 입력하는 연습을 할 것
//matrix뒤집는거 잘 할 것 


-------


//자릿수별 값 구하기
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

a : -1.4987
b : 6.4888 
c: -1.5099
d: 5.0544

//자릿수에 sqrt가 들어가는 경우도 있었음 (coefficiency)
//문제를 잘 읽고 확인할 것 

-------


