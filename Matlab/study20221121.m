%%
%
answer = 0;
TS = zeros(16, 1);

for i = 4:1:20
    num = (((-1)^i)*i) / (2^i);
    TS(i-3, 1) = num
end

sum(TS)
%결과물을 벡터에 넣어서 확인해가며 하는것도 좋음 (추천) 


%%

%radian
deg = 150;
deg_rad = deg*pi/180;
y = 0;
n = 3

for k = 0:n-1
    y = y + ((-1)^k*deg_rad^(2*k+1)/factorial(2*k+1));

end
%관성적으로 y - y + (function)해도 OK 

y

%%

V = [5, 17, -3, 8, 0, -7, 12, 15, 20, -6, 6, 4, -7, 16];

for i = 1:length(V)
    if V(i)>0 & (rem(V(i),3)==0 | rem(V(i),5)==0)
        V(i) = V(i)*2;
    elseif V(i)<0 & V(i)>-5
        V(i) = V(i)*3;
    end
end

V