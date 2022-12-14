%%Bubble Sort

function output = bubblesort (x)

for n = length(x):-1:2
    for m = 1:n-1
        while x(m) > x(m+1)
            x([m, m+1]) = x([m+1, m]);  % swap x(m) and x(m+1)
        end
    end
end

output = x;

%x 대신에 배열 삽입하면 됨 
%like this
% x =[25     3    15    18    11    21    26    28]
% bsortx = bubblesort(x)



%% Insetion Sort

n17 = length(x);

for i = 2:n17    
    while((i > 1) && (x(i) < x(i-1)))
        temp = x(i);
        x(i) = x(i-1);
        x(i-1) = temp;
        i = i-1;
    end
end
sorted = x;
disp(x);


%x에 배열 삽입


%% Selection Sort
-------------

A = input('Enter numbers between [ ] separated by comma, i.e. [1,2,3,4]: ');
n = length(A);

for i=1:n-1
    [x index] = min(A(i:n)); 
    minIndex = index + i-1; 
    temp = A(i);
    A(i) = A(minIndex);
    A(minIndex) = temp;
end;

disp(A);

%A에 input 