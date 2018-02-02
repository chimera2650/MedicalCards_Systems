%Determine Template Layout
ShufVar = {Range1, Range3, Range4, Range5, Text2, Text3, Text4, Text5, Range2, Text6; 'HR','SpO2','RR','Temp','ALT','AST','ALP','GGT','NBP','Ultrasound';'45','45','45','45','45','45','45','45','32','18';'0','0','0','0','0','0','0','0','0','32';'0','0','0','0','0','0','0','0','0','0'};
RandP = randperm(10);
%Present Template
Template;
%Show Template and Add Marker
flipandmark(win,TemplateMarker,dummy_mode);

while AnsGiven == 0
    [res] = getresponse(dummy_mode);
    if res == 'r'
        ResponseTime = toc;
        sendmarker(conflict_marker,dummy_mode);
        Screen('DrawLine', win, [150 150 150], mid_x-20, mid_y, mid_x+20, mid_y, 2);
        Screen('DrawLine', win, [150 150 150], mid_x, mid_y+20, mid_x, mid_y-20, 2);
        Screen('Flip',win);
        WaitSecs(Int);
        Screen('DrawTexture', win, CorrectImg);
        flipandmark(win,WinMarker,dummy_mode);
        WaitSecs(1);
        AnsGiven = 1;
        Accuracy = Accuracy+1;
        WinLoss = 1;
        break
    elseif res == 'g'
        ResponseTime = toc;
        sendmarker(conflict_marker,dummy_mode);
        Screen('DrawLine', win, [150 150 150], mid_x-20, mid_y, mid_x+20, mid_y, 2);
        Screen('DrawLine', win, [150 150 150], mid_x, mid_y+20, mid_x, mid_y-20, 2);
        Screen('Flip',win);
        WaitSecs(Int);
        Screen('TextFont',win,'Arial');
        Screen('TextSize',win,25);
        DrawFormattedText(win,'X','Center','Center',[255 255 255]);
        flipandmark(win,LossMarker,dummy_mode);
        WaitSecs(1);
        AnsGiven = 1;
        WinLoss = 0;
        break
    end
end
WaitSecs(0.25);