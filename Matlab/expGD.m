function At = expGD(A0, At1, t1, t)
%A0 : quantity at time zero
%At1: quantity at time t1
%t1 : the time t1
% t: time t
%At : quantity at time 

k = log(At1/A0)/t1;
At = A0*exp(k*t);
