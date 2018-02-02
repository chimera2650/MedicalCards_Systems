
Survey
while refresh == 1
    
    while 1
        RestrictKeysForKbCheck([11:20,23,66]);
        [secs, key, deltaSecs] = KbWait();

        Screen('TextFont',win,'Arial');
        Screen('TextSize',win,45*factorf);
        if key(1,11) == 1;
            ImportantValue(1,Cond) = 1;13
            DrawFormattedText(win,'+', mid_x+20*factorw,mid_y-119*factorh,[76 174 55]);
            Screen('Flip',win,[],1)
        end
        if key(1,12) == 1;
            ImportantValue(2,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+180*factorw,mid_y-119*factorh,[76 174 55]);
            Screen('Flip',win,[],1)
        end
        if key(1,13) == 1;
            ImportantValue(3,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+20*factorw,mid_y-67*factorh,[141 88 160]);
            Screen('Flip',win,[],1)
        end
        if key(1,14) == 1;
            ImportantValue(4,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+180*factorw,mid_y-67*factorh,[141 88 160]);
            Screen('Flip',win,[],1)
        end
        if key(1,15) == 1;
            ImportantValue(5,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+20*factorw,mid_y-15*factorh,[92 190 203]);
            Screen('Flip',win,[],1)
        end
        if key(1,16) == 1;
            ImportantValue(6,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+180*factorw,mid_y-15*factorh,[92 190 203]);
            Screen('Flip',win,[],1)
        end
        if key(1,17) == 1;
            ImportantValue(7,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+20*factorw,mid_y+37*factorh,[239 236 45]);
            Screen('Flip',win,[],1)
        end
        if key(1,18) == 1;
            ImportantValue(8,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+180*factorw,mid_y+37*factorh,[239 236 45]);
            Screen('Flip',win,[],1)
        end
        if key(1,19) == 1;
            ImportantValue(9,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+20*factorw,mid_y+89*factorh,[255 255 255]);
            Screen('Flip',win,[],1)
        end
        if key(1,20) == 1;
            ImportantValue(10,Cond) = 1;
            DrawFormattedText(win,'+', mid_x+180*factorw,mid_y+89*factorh,[255 255 255]);
            Screen('Flip',win,[],1)
        end
        
        
        if key(1,66) == 1;
            refresh = 0
            break
        end
        if key(1,23) == 1;
            keys(1:10,1) = 0
            Survey
            break
        end

        
    end
    WaitSecs(1);
end

RestrictKeysForKbCheck([]);