%%'
%shuffle number example
array = [1, 2, 3, 4, 5, 6];
array = array(randperm(length(array)));
names = ['John', 'David','Tracy', 'Mike', 'Katie', 'David'];

for (i=0; i<6; i++)
    num = array[i];
    disp(names[i]);
end    
%같은 로직으로 다시 쓰면 됨 


%%
%
limit=int(input("Enter upper limit:"))
c=0
m=2
while(c<limit)
    for n in range(1,m+1)
        a=m*m-n*n
        b=2*m*n
        c=m*m+n*n
        if(c>limit)
            break
        if(a==0 or b==0 or c==0)
            break
        print(a,b,c)
    m=m+1
        end
        end
    end
end
 %pythagorean triple python code

%%
%


