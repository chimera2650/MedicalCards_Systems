Screen('TextFont',win,'Arial');
Screen('TextSize',win,30);
DrawFormattedText(win,'Please indicate your confidence in your last diagnosis','center',mid_y-30,[255 255 255]);
DrawFormattedText(win,'from 1 (keyboard number 1) to 10 (keyboard number 0)','center',mid_y+30,[255 255 255]);
Screen('Flip',win);

while 1
    RestrictKeysForKbCheck([11:20,23,66]);
    [secs,key,deltaSecs] = KbWait();
    
    if key(1,11) == 1
        confidence_response = 1;
        break
    end
    
    if key(1,12) == 1
        confidence_response = 2;
        break
    end
    
    if key(1,13) == 1
        confidence_response = 3;
        break
    end
    
    if key(1,14) == 1
        confidence_response = 4;
        break
    end
    
    if key(1,15) == 1
        confidence_response = 5;
        break
    end
    
    if key(1,16) == 1
        confidence_response = 6;
        break
    end
    
    if key(1,17) == 1
        confidence_response = 7;
        break
    end
    
    if key(1,18) == 1
        confidence_response = 8;
        break
    end
    
    if key(1,19) == 1
        confidence_response = 9;
        break
    end
    
    if key(1,20) == 1
        confidence_response = 10;
        break
    end
end

Con_Int = (.600-.400)*rand()+.400;
Screen('DrawLine',win,[150 150 150],mid_x-20,mid_y,mid_x+20,mid_y,2);
Screen('DrawLine',win,[150 150 150],mid_x,mid_y+20,mid_x,mid_y-20,2);
confidence_marker = conflict_marker - 50;
flipandmark(win,confidence_marker,dummy_mode)
WaitSecs(Con_Int);