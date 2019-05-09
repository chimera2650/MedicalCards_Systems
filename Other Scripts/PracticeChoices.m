% Instructions
Screen('TextFont',win,'Arial');
Screen('TextSize',win,round(30*factorf));
DrawFormattedText(win,'You will select your answer by clicking a coloured button','center',mid_y-260*factorh,[255 255 255]);
DrawFormattedText(win,'The conditions will not always be in the same location','center',mid_y-200*factorh,[255 255 255]);
DrawFormattedText(win,'To cancel your selection, click any coloured button','center',mid_y+150*factorh,[255 255 255]);
DrawFormattedText(win,'To submit your selection, click the white button','center',mid_y+210*factorh,[255 255 255]);
DrawFormattedText(win,'Try it now! Click a coloured button then the red button','center',mid_y+270*factorh,[255 255 255]);
fontsize = 21;

% Left (Green)
Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y-25,mid_x-50,mid_y-25,2);
Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y+25,mid_x-50,mid_y+25,2);
Screen('DrawLine',win,[0 150 0],mid_x-200,mid_y-25,mid_x-200,mid_y+25,2);
Screen('DrawLine',win,[0 150 0],mid_x-50,mid_y-25,mid_x-50,mid_y+25,2);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,fontsize*factorf);
DrawFormattedText(win,'Cholestatic',mid_x-178,mid_y-20,[255 255 255]);
DrawFormattedText(win,'Intrahepatic',mid_x-182,mid_y-0,[255 255 255]);

% Right (Red)
Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y-25,mid_x+200, mid_y-25,2);
Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y+25,mid_x+200, mid_y+25,2);
Screen('DrawLine',win,[150 0 0],mid_x+50,mid_y-25,mid_x+50, mid_y+25,2);
Screen('DrawLine',win,[150 0 0],mid_x+200,mid_y-25,mid_x+200, mid_y+25,2);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,fontsize*factorf);
DrawFormattedText(win,'Severe',mid_x+89,mid_y-20,[255 255 255]);
DrawFormattedText(win,'Hepatocellular',mid_x+60,mid_y-0,[255 255 255]);

% Bottom (Blue)
Screen('DrawLine',win,[0 0 150],mid_x-75,mid_y+50,mid_x+75,mid_y+50,2);
Screen('DrawLine',win,[0 0 150],mid_x-75,mid_y+100,mid_x+75,mid_y+100,2);
Screen('DrawLine',win,[0 0 150],mid_x-75,mid_y+50,mid_x-75,mid_y+100,2);
Screen('DrawLine',win,[0 0 150],mid_x+75,mid_y+50,mid_x+75,mid_y+100,2);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,fontsize*factorf);
DrawFormattedText(win,'Mild',mid_x-20,mid_y+55,[255 255 255]);
DrawFormattedText(win,'Hepatocellular',mid_x-65,mid_y+74,[255 255 255]);

% Top (Yellow)
Screen('DrawLine',win,[150 150 0],mid_x-75,mid_y-50,mid_x+75,mid_y-50,2);
Screen('DrawLine',win,[150 150 0],mid_x-75,mid_y-100,mid_x+75,mid_y-100,2);
Screen('DrawLine',win,[150 150 0],mid_x-75,mid_y-50,mid_x-75,mid_y-100,2);
Screen('DrawLine',win,[150 150 0],mid_x+75,mid_y-50,mid_x+75,mid_y-100,2);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,fontsize*factorf);
DrawFormattedText(win,'Cholestatic',mid_x-53,mid_y-95,[255 255 255]);
DrawFormattedText(win,'Extrahepatic',mid_x-59,mid_y-75,[255 255 255]);
Screen('Flip',win,[],1)