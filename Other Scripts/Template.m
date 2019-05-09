Screen('FillRect',win,[255 255 255],[mid_x-273*factorw mid_y-140*factorh mid_x+272*factorw mid_y+140*factorh]);
Screen('FillRect',win,[0 0 0],[mid_x-248*factorw mid_y-125*factorh mid_x-73*factorw mid_y+125*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x-63*factorw mid_y-125*factorh mid_x+87*factorw mid_y-83*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x-63*factorw mid_y-73*factorh mid_x+87*factorw mid_y-31*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x-63*factorw mid_y-21*factorh mid_x+87*factorw mid_y+21*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x-63*factorw mid_y+31*factorh mid_x+87*factorw mid_y+73*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x-63*factorw mid_y+83*factorh mid_x+87*factorw mid_y+125*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x+97*factorw mid_y-125*factorh mid_x+247*factorw mid_y-83*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x+97*factorw mid_y-73*factorh mid_x+247*factorw mid_y-31*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x+97*factorw mid_y-21*factorh mid_x+247*factorw mid_y+21*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x+97*factorw mid_y+31*factorh mid_x+247*factorw mid_y+73*factorh]);
Screen('FillRect',win,[64 64 64],[mid_x+97*factorw mid_y+83*factorh mid_x+247*factorw mid_y+125*factorh]);

% Face Image
Screen('DrawTexture',win,FaceImages{current_image},[],[mid_x-248*factorw mid_y-125*factorh mid_x-73*factorw mid_y+125*factorh]);

% Value Text
Screen('TextFont',win,'Arial');
Screen('TextSize',win,round(10*factorf));
DrawFormattedText(win,char(ShufVar(2,RandP(1))),mid_x-61*factorw,mid_y-116*factorh,[76 174 55]);
DrawFormattedText(win,char(ShufVar(2,RandP(2))),mid_x-60*factorw,mid_y-64*factorh,[141 88 160]);
DrawFormattedText(win,char(ShufVar(2,RandP(3))),mid_x-61*factorw,mid_y-12*factorh,[92 190 203]);
DrawFormattedText(win,char(ShufVar(2,RandP(4))),mid_x-60*factorw,mid_y+40*factorh,[239 236 45]);
DrawFormattedText(win,char(ShufVar(2,RandP(5))),mid_x-61*factorw,mid_y+92*factorh,[255 255 255]);
DrawFormattedText(win,char(ShufVar(2,RandP(9))),mid_x+99*factorw,mid_y-116*factorh,[76 174 55]);
DrawFormattedText(win,char(ShufVar(2,RandP(6))),mid_x+100*factorw,mid_y-64*factorh,[141 88 160]);
DrawFormattedText(win,char(ShufVar(2,RandP(7))),mid_x+99*factorw,mid_y-12*factorh,[92 190 203]);
DrawFormattedText(win,char(ShufVar(2,RandP(8))),mid_x+99*factorw,mid_y+40*factorh,[239 236 45]);
DrawFormattedText(win,char(ShufVar(2,RandP(10))),mid_x+99*factorw,mid_y+92*factorh,[255 255 255]);

% Value Ranges
% Left Side
Screen('TextFont',win,'Arial');
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(1))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(1))),mid_x-28-str2num(char(ShufVar(4,RandP(1))))*factorw,mid_y-90+str2num(char(ShufVar(5,RandP(1))))*factorh,[76 174 55]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(2))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(2))),mid_x-28-str2num(char(ShufVar(4,RandP(2))))*factorw,mid_y-37+str2num(char(ShufVar(5,RandP(2))))*factorh,[141 88 160]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(3))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(3))),mid_x-28-str2num(char(ShufVar(4,RandP(3))))*factorw,mid_y+15+str2num(char(ShufVar(5,RandP(3))))*factorh,[92 190 203]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(4))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(4))),mid_x-28-str2num(char(ShufVar(4,RandP(4))))*factorw,mid_y+67+str2num(char(ShufVar(5,RandP(4))))*factorh,[239 236 45]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(5))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(5))),mid_x-28-str2num(char(ShufVar(4,RandP(5))))*factorw,mid_y+119+str2num(char(ShufVar(5,RandP(5))))*factorh,[255 255 255]);

% Right side
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(6))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(6))),mid_x+132-str2num(char(ShufVar(4,RandP(6))))*factorw,mid_y-37+str2num(char(ShufVar(5,RandP(6))))*factorh,[141 88 160]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(7))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(7))),mid_x+132-str2num(char(ShufVar(4,RandP(7))))*factorw,mid_y+15+str2num(char(ShufVar(5,RandP(7))))*factorh,[92 190 203]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(8))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(8))),mid_x+132-str2num(char(ShufVar(4,RandP(8))))*factorw,mid_y+67+str2num(char(ShufVar(5,RandP(8))))*factorh,[239 236 45]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(9))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(9))),mid_x+132-str2num(char(ShufVar(4,RandP(9))))*factorw,mid_y-90+str2num(char(ShufVar(5,RandP(9))))*factorh,[76 174 55]);
Screen('TextSize',win,str2num(char(ShufVar(3,RandP(10))))*factorf);
DrawFormattedText(win,char(ShufVar(1,RandP(10))),mid_x+132-str2num(char(ShufVar(4,RandP(10))))*factorw,mid_y+119+str2num(char(ShufVar(5,RandP(10))))*factorh,[255 255 255]);

%% Response Options
fontsize = 21;
if CounterBalance == 1
    % Left (Green)
    Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y+175,mid_x-50,mid_y+175,2);
    Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y+225,mid_x-50,mid_y+225,2);
    Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y+175,mid_x-200,mid_y+225,2);
    Screen('DrawLine',win,[0 150 0],mid_x-50,mid_y+175,mid_x-50,mid_y+225,2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'Cholestatic',mid_x-178,mid_y+200,[255 255 255]);
    DrawFormattedText(win,'Extrahepatic',mid_x-184,mid_y+220,[255 255 255]);
    
    % Right
    Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y+175,mid_x+200,mid_y+175,2);
    Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y+225,mid_x+200,mid_y+225,2);
    Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y+175,mid_x+50,mid_y+225,2);
    Screen('DrawLine',win,[150 0 0],mid_x+200,mid_y+175,mid_x+200,mid_y+225,2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'General',mid_x+89,mid_y+200,[255 255 255]);
    DrawFormattedText(win,'Hepatocellular',mid_x+60,mid_y+220,[255 255 255]);
    
elseif CounterBalance == 2
    % Left (Green)
    Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y+175,mid_x-50,mid_y+175,2);
    Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y+225,mid_x-50,mid_y+225,2);
    Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y+175,mid_x-200,mid_y+225,2);
    Screen('DrawLine',win,[0 150 0],mid_x-50,mid_y+175,mid_x-50,mid_y+225,2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'General',mid_x-161,mid_y+200,[255 255 255]);
    DrawFormattedText(win,'Hepatocellular',mid_x-190,mid_y+220,[255 255 255]);
    
    % Right
    Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y+175,mid_x+200,mid_y+175,2);
    Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y+225,mid_x+200,mid_y+225,2);
    Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y+175,mid_x+50,mid_y+225,2);
    Screen('DrawLine',win,[150 0 0],mid_x+200,mid_y+175,mid_x+200,mid_y+225,2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'Cholestatic',mid_x+72,mid_y+200,[255 255 255]);
    DrawFormattedText(win,'Extrahepatic',mid_x+66,mid_y+220,[255 255 255]);
end