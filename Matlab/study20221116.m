t = input('enter the number of working time (h) : ');
h = input('enter the hourly wage in won (won): ');

monthly = t*h;
if t> 40
    monthly = monthly + (t-40)*0.5*h;
    

end

fprintf('pay is %.2f won \n', monthly);

%%
%Case1

h = input('Enter the height of the float in meter');


if h > 33
    fprintf('33초과는 물이 넘쳐서 불가능');
elseif h < 0
    fprintf('물을 안 넣고 부피를 재는 것은 불가능');
elseif h <=19
    v = pi*(1.25^2)*h;
else
    rh = 12.5 + 10.5*(h-19)/14;
    v = pi*(1.25^2)*19 + pi*(h-19)*(12.5^2 + 12.5*rh + (rh^2))/3;
end

fprintf('Total volume is %.3f \n\n', v);


%%

E = input('input the value of the energy : ');
EinUnit = input('Enter value of the energy to be converted : ', "s");
EoutUnit= input('Enter current units (J, ft-lb, cal, eV) :' , "s");
error=0; EJ = 0;

switch EinUnit
    case 'J'
        Eout= E;
    case 'ft-lb'
        Eout = E/0.738;
    case 'cal'
        Eout = E/0.239;
    case 'eV'
        Eout = E/6.24e18;
    otherwise
        error=1;
end


switch EoutUnit
    case 'J'
        Eout= EJ;
    case 'ft-lb'
        Eout = EJ*0.738;
    case 'cal'
        Eout = EJ*0.239;
    case 'eV'
        Eout = EJ*6.24e18;
    otherwise
        error=1;
end


if error==1
    disp('Error')
elseif error == 0
    fprintf('E = %f %s \n\n', Eout, EoutUnit);
end









