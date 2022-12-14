%%Example
format bank
Vmph = 10: 10: 100;
Vkmh = Vmph.*1.609;
TBL1 = [Vmph; Vkmh];

Flb = 200:200:2000;
FN = Flb.*4.448;
TBL2 = [Flb; FN];

%data output
fpath = 'C:\Users\Blazecyan\Desktop\Matlab\';
fid1 = fopen([fpath 'TBL1.txt'], 'w');
fid2 = fopen([fpath, 'TBL2.txt'], 'w');

fprintf(fid1, 'Velocity Conversion Table \n\n');
fprintf(fid1, 'mi/h km/h \n');
fprintf(fid1, '%8.2f %8.2f \n', TBL1 );

fprintf(fid2, 'Force Conversion Table \n\n');
fprintf(fid2, 'Pounds NEWTONS \n');
fprintf(fid2, '%8.2f, %8.2f \n', TBL2);

%close file
%rly similar to shitty C language
fclose(fid1);
fclose(fid2);

%%
%Ex_add 

fpath = 'C:\Users\Blazecyan\Desktop\Matlab\';
filename = 'game_score.txt';
fid = fopen([fpath filename], 'w+');

number = 1:1:7;
game1 = [93 97 65 97 85 63 71];
game2 = [82 99 99 66 98 91 79];
game3 = [90 67 80 68 84 77 83];

number = number(:);
game1 = game1(:);
game2 = game2(:);
game3 =game3(:);

table_first = [game1 game2 game3];
table_avg = sum(table_first, 2)/3;
table = [number table_first table_avg];

fprintf(fid, 'Student''s scores and average scores for Game 1, 2, 3 \n\n');
fprintf(fid, 'Number Game1 Game2 Game3 Average_score \n');
fprintf(fid, '%i  %i  %i  %i  %5.2f \n', table);

fclose(fid);


%%
%Add Data

add_fid = fopen([path filename], 'a+');








