fontsize = 21;
if CounterBalance == 1
    %Left (Green)
    Screen('DrawLine', win, [0 150 0], mid_x-200, mid_y-25, mid_x-50, mid_y-25, 2);
    Screen('DrawLine', win, [0 150 0], mid_x-200, mid_y+25, mid_x-50, mid_y+25, 2);
    Screen('DrawLine', win, [0 150 0], mid_x-200, mid_y-25, mid_x-200, mid_y+25, 2);
    Screen('DrawLine', win, [0 150 0], mid_x-50, mid_y-25, mid_x-50, mid_y+25, 2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'Cholestatic', mid_x-178, mid_y-20,[255 255 255]);
    DrawFormattedText(win,'Extrahepatic', mid_x-184, mid_y-0,[255 255 255]);
    %Right
    Screen('DrawLine', win, [150 0 0], mid_x+50, mid_y-25, mid_x+200, mid_y-25, 2);
    Screen('DrawLine', win, [150 0 0], mid_x+50, mid_y+25, mid_x+200, mid_y+25, 2);
    Screen('DrawLine', win, [150 0 0], mid_x+50, mid_y-25, mid_x+50, mid_y+25, 2);
    Screen('DrawLine', win, [150 0 0], mid_x+200, mid_y-25, mid_x+200, mid_y+25, 2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'General', mid_x+89, mid_y-20,[255 255 255]);
    DrawFormattedText(win,'Hepatocellular', mid_x+60, mid_y-0,[255 255 255]);

else CounterBalance == 2
    %Left (Green)
    Screen('DrawLine', win, [0 150 0], mid_x-200, mid_y-25, mid_x-50, mid_y-25, 2);
    Screen('DrawLine', win, [0 150 0], mid_x-200, mid_y+25, mid_x-50, mid_y+25, 2);
    Screen('DrawLine', win, [0 150 0], mid_x-200, mid_y-25, mid_x-200, mid_y+25, 2);
    Screen('DrawLine', win, [0 150 0], mid_x-50, mid_y-25, mid_x-50, mid_y+25, 2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'General', mid_x-161, mid_y-20,[255 255 255]);
    DrawFormattedText(win,'Hepatocellular', mid_x-190, mid_y-0,[255 255 255]);
        %Right
    Screen('DrawLine', win, [150 0 0], mid_x+50, mid_y-25, mid_x+200, mid_y-25, 2);
    Screen('DrawLine', win, [150 0 0], mid_x+50, mid_y+25, mid_x+200, mid_y+25, 2);
    Screen('DrawLine', win, [150 0 0], mid_x+50, mid_y-25, mid_x+50, mid_y+25, 2);
    Screen('DrawLine', win, [150 0 0], mid_x+200, mid_y-25, mid_x+200, mid_y+25, 2);
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,fontsize*factorf);
    DrawFormattedText(win,'Cholestatic', mid_x+72, mid_y-20,[255 255 255]);
    DrawFormattedText(win,'Extrahepatic', mid_x+66, mid_y-0,[255 255 255]);
end
Screen('Flip',win,[],1);