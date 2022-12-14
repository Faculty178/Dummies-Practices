%% 홀수 인덱스, 짝수 인덱스 
-----
vC = 2:5:70; //초기값 
VCodd = vC([1:2:13]) //홀수 인덱스
vCeven = vC([2:2:14]) //짝수 인덱스 


%%
-----
1차원 배열 행렬 뒤집기


V5 = 4000:-500:1000;
V5 = V5(:)
// V5 =

//     4000
//     3500
//     3000
//     2500
//     2000
//     1500
//     1000


%%
----
vector length

U8 = [-5.6 11 -14];
//x, y, z coordinate
Q8_length = sqrt(sum(U8.*U8))


%%
------
acosd, asind, atand 는 역코사인, 역사인, 역탄젠트 (cos -1) 
//d가 붙었으니 숫자각
//rad이면 acos, asin, atan


%%
-----
cross product > cross()
%dot product > dot()


