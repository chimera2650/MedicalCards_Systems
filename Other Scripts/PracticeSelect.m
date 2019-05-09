AnsGiven = 0;
PracticeChoices
while AnsGiven == 0
    [res] = getresponse(dummy_mode);
    if res == 'r'
        Screen('DrawLine',win,[200 0 0],mid_x+48,mid_y-25,mid_x+202,mid_y-25,4);
        Screen('DrawLine',win,[200 0 0],mid_x+48,mid_y+25,mid_x+202,mid_y+25,4);
        Screen('DrawLine',win,[200 0 0],mid_x+50,mid_y-25,mid_x+50,mid_y+25,4);
        Screen('DrawLine',win,[200 0 0],mid_x+200,mid_y-25,mid_x+200,mid_y+25,4);
        Screen('Flip',win);
        WaitSecs(0.25);
        
        while 1
            [res] = getresponse(dummy_mode);
            if res == 'w'
                AnsGiven = 1;
                break
            end
            
            if res == 'r' || res == 'g' || res == 'y' || res == 'b'
                PracticeChoices
                break
            end
        end
        
        WaitSecs(0.25);
        
    elseif res == 'g'
        Screen('DrawLine',win,[0 200 0],mid_x-202,mid_y-25,mid_x-48,mid_y-25,4);
        Screen('DrawLine',win,[0 200 0],mid_x-202,mid_y+25,mid_x-48,mid_y+25,4);
        Screen('DrawLine',win,[0 200 0],mid_x-200,mid_y-25,mid_x-200,mid_y+25,4);
        Screen('DrawLine',win,[0 200 0],mid_x-50,mid_y-25,mid_x-50,mid_y+25,4);
        Screen('Flip',win);
        WaitSecs(0.25);
        
        while 1
            [res] = getresponse(dummy_mode);
            if res == 'w'
                AnsGiven = 1;
                break
            end
            
            if res == 'r' || res == 'g'|| res == 'y' || res == 'b'
                PracticeChoices
                break
            end
        end
        
        WaitSecs(0.25);
        
    elseif res == 'y'
        Screen('DrawLine',win,[200 200 0],mid_x-77,mid_y-50,mid_x+77,mid_y-50,4);
        Screen('DrawLine',win,[200 200 0],mid_x-77,mid_y-100,mid_x+77,mid_y-100,4);
        Screen('DrawLine',win,[200 200 0],mid_x-75,mid_y-50,mid_x-75,mid_y-100,4);
        Screen('DrawLine',win,[200 200 0],mid_x+75,mid_y-50,mid_x+75,mid_y-100,4);
        Screen('Flip',win);
        WaitSecs(0.25);
        
        while 1
            [res] = getresponse(dummy_mode);
            if res == 'w'
                AnsGiven = 1;
                break
            end
            
            if res == 'r' || res == 'g'|| res == 'y' || res == 'b'
                PracticeChoices
                break
            end
        end
        
        WaitSecs(0.25);
        
    elseif res == 'b'
        Screen('DrawLine',win,[0 0 200],mid_x-77,mid_y+50,mid_x+77,mid_y+50,4);
        Screen('DrawLine',win,[0 0 200],mid_x-77,mid_y+100,mid_x+77,mid_y+100,4);
        Screen('DrawLine',win,[0 0 200],mid_x-75,mid_y+50,mid_x-75,mid_y+100,4);
        Screen('DrawLine',win,[0 0 200],mid_x+75,mid_y+50,mid_x+75,mid_y+100,4);
        Screen('Flip',win);
        WaitSecs(0.25);
        
        while 1
            [res] = getresponse(dummy_mode);
            if res == 'w'
                AnsGiven = 1;
                break
            end
            
            if res == 'r' || res == 'g'|| res == 'y' || res == 'b'
                PracticeChoices
                break
            end
        end
        
        WaitSecs(0.25);
    end
end