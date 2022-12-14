%%Fibonacci
% 초기값이 2개일 때, a, b에 첫 값
% 범위 3부터 n까지 (아래의 경우 10)
% new 값을 구하고 swap, 그 후 배열에 하나씩 추가
% preallocation 해달라고 경고문이 뜨는데 무시할 수 있음

fibo2 = [1, 1];

a = 1; b = 1;
fprintf('n = 10 \n\n');
for i = 3:10
    new = a + b;
    a = b; b = new;
    fibo2 = [fibo2, new];
end


%% Fibonacci2
%초기값이 3개인 경우, a, b, c에 첫 값
%기본 원리는 같음

fibo = [0, 1, 1];
a= 0; b =1; c = 1;

for i=4:25
    new = a + b + c;
    a = b; b = c; c = new;
    fibo = [fibo, new];
end

disp(fibo);


%%
%배열 역수로 만드는거
fibo_inv = [1./fibo2];

%역수 배열의 합
sum_fibo = sum(fibo_inv);