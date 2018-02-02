refresh = 1

%Heart Rate
Range1 = '1';
%Systolic / Diastolic Blood Pressure
Range2 = '2';
% O2
Range3 = '5';
% RR
Range4 = '9';
% Temp
Range5 = '8';
%ALT
Text2 = '3';
%AST
Text3 = '6';
%ALP
Text4 = '7';
%GGT
Text5 = '4';
%Ultrasound
Text6 = '0';

%Instructions
Screen('TextFont',win,'Arial');
Screen('TextSize',win,round(30*factorf));
DrawFormattedText(win,'Which value(s) did you find important?','center',mid_y-250*factorh,[255 255 255]);
DrawFormattedText(win,'Select important values by using the top numbers of the keyboard','center',mid_y-200*factorh,[255 255 255]);
DrawFormattedText(win,'Click the backspace button to cancel selections','center',mid_y+175*factorh,[255 255 255]);
DrawFormattedText(win,'Click the space bar to submit answer','center',mid_y+225*factorh,[255 255 255]);

%Template
Screen('FillRect', win, [255 255 255], [mid_x-273*factorw mid_y-140*factorh mid_x+272*factorw mid_y+140*factorh]);
Screen('FillRect', win, [0 0 0], [mid_x-248*factorw mid_y-125*factorh mid_x-73*factorw mid_y+125*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x-63*factorw mid_y-125*factorh mid_x+87*factorw mid_y-83*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x-63*factorw mid_y-73*factorh mid_x+87*factorw mid_y-31*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x-63*factorw mid_y-21*factorh mid_x+87*factorw mid_y+21*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x-63*factorw mid_y+31*factorh mid_x+87*factorw mid_y+73*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x-63*factorw mid_y+83*factorh mid_x+87*factorw mid_y+125*factorh]);

Screen('FillRect', win, [64 64 64], [mid_x+97*factorw mid_y-125*factorh mid_x+247*factorw mid_y-83*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x+97*factorw mid_y-73*factorh mid_x+247*factorw mid_y-31*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x+97*factorw mid_y-21*factorh mid_x+247*factorw mid_y+21*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x+97*factorw mid_y+31*factorh mid_x+247*factorw mid_y+73*factorh]);
Screen('FillRect', win, [64 64 64], [mid_x+97*factorw mid_y+83*factorh mid_x+247*factorw mid_y+125*factorh]);

%Face Image
% Screen('DrawTexture', win, FaceImages{current_image}, [], [mid_x-248*factorw mid_y-125*factorh mid_x-73*factorw mid_y+125*factorh]);

%Value Text
Screen('TextFont',win,'Arial');
Screen('TextSize',win,round(10*factorf));
DrawFormattedText(win,'HR', mid_x-61*factorw,mid_y-104*factorh,[76 174 55]);
DrawFormattedText(win,'ALT', mid_x-60*factorw,mid_y-52*factorh,[141 88 160]);
DrawFormattedText(win,'SpO2', mid_x-61*factorw,mid_y-0*factorh,[92 190 203]);
DrawFormattedText(win,'ALP', mid_x-60*factorw,mid_y+52*factorh,[239 236 45]);
DrawFormattedText(win,'RR', mid_x-61*factorw,mid_y+104*factorh,[255 255 255]);

DrawFormattedText(win,'NBP', mid_x+99*factorw,mid_y-104*factorh,[76 174 55]);
DrawFormattedText(win,'GGT', mid_x+100*factorw,mid_y-52*factorh,[141 88 160]);
DrawFormattedText(win,'AST', mid_x+99*factorw,mid_y-0*factorh,[92 190 203]);
DrawFormattedText(win,'Temp', mid_x+99*factorw,mid_y+52*factorh,[239 236 45]);
DrawFormattedText(win,'Ultrasound', mid_x+99*factorw,mid_y+104*factorh,[255 255 255]);


%Value Ranges
Screen('TextFont',win,'Arial');
Screen('TextSize',win,45*factorf);
DrawFormattedText(win,Range1, mid_x-5*factorw,mid_y-89*factorh,[76 174 55]);
DrawFormattedText(win,Text2, mid_x-5*factorw,mid_y-37*factorh,[141 88 160]);
DrawFormattedText(win,Range3, mid_x-5*factorw,mid_y+15*factorh,[92 190 203]);
DrawFormattedText(win,Text4, mid_x-5*factorw,mid_y+67*factorh,[239 236 45]);
DrawFormattedText(win,Range4, mid_x-5*factorw,mid_y+119*factorh,[255 255 255]);

DrawFormattedText(win,Range2, mid_x+155*factorw,mid_y-89*factorh,[76 174 55]);
DrawFormattedText(win,Text5, mid_x+155*factorw,mid_y-37*factorh,[141 88 160]);
DrawFormattedText(win,Text3, mid_x+155*factorw,mid_y+15*factorh,[92 190 203]);
DrawFormattedText(win,Range5, mid_x+155*factorw,mid_y+67*factorh,[239 236 45]);
DrawFormattedText(win,Text6, mid_x+155*factorw,mid_y+119*factorh,[255 255 255]);

Screen('Flip',win,[],1);