%%반감기 자꾸 틀려서 백업 

%h_life = input('Enter the half-life (years): ');
%A_zero = input('Enter the current amount (lb): ');
%time = input('Enter the years (years): ');

%반감기 h_life = 24110
%초기 양이 50(lb)
%500년 뒤라서 time = 500


h_life = 24110; A_zero = 50; time = 500; 
const_k = log(0.5)/(time*h_life);
A_ans = A_zero*exp((-1*const_k)*time);

