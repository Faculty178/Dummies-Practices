temps = [58 73 73 53 50 48 56 73 73 66 69 63 74 82 84 91 93 89 91 80 59 69 56 64 63 66 64 74 63 69];
base = 75;

%% 
%a 
find(temps > 75)
length(find(temps>75))

%%
%b
length(find(temps>65 & temps<80))

%%
%c
find(temps > 50 & temps < 60)