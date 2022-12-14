a = [1 4 9; 16 25 36;49 64 81];
b = sqrt(a);

max(a,5);
dot(a, b);
cross(a, b);

rannum = rand(8);
c = randperm(4);

lotto = randperm(45, 6);

d = randi(50, 2, 9);

ab = rand(20, 10);
abmean = mean(ab, "all");


%%
%Sample Question 3-3
m = [2 4 5 10 20 50];
F = [12.4 23.5 30 61 117 294];

mu = F./(m.*9.81) 
%스칼라갑 곱이므로 .* 대신 *해도 같은 값은 나옴. 
% 하지만 헷갈리는걸 방지하기 위해 .*으로 쓰는 습관을 들이는 것을 추천함... 
mu_avg = mean(mu)

%값 표시가 미묘하다면 format을 바꾸는것을 고려해볼 것 