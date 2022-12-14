%% 
%랜덤 난수 생성

% [-20, 20]범위의 정수 30개
% 뒤의 두 값은 matrix 크기임! 1x30으로 만들겠다는 뜻 

numbers7 = randi([-20, 20], 1, 30);



%%
% 나머지 연산

rem(numbers7(i), 3) 
// rem(value, 나눌 수)
// == 0이면 나누어 떨어짐
//1, 2면 나머지가 1 or 2


%%
배열에 값 추가

pos_arr9 = [];
pos_arr9 = [pos_arr9, array9(i)];

//preallocation 해달라고 경고문 뜸
//무시하면 됨 

