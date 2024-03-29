%% Author Info
% Written by Chad Williams, Neuroscience  Master's Student
% In Dr. Olav Krigolson's Neuroeconomics Laboratory
% University of Victoria
% August, 20170

%Adapted by Chad Williams in September 2017 for Jordan Middleton

%% Script
addpath('./Other Scripts');
addpath('./Images');
addpath('./Face Images/male');
addpath('./Face Images/female');

% clears all variables
clear all;

% closes all files
close all;

% clear screen
clc;

% hide the cursor
HideCursor();

%0 for testing, 1 for running
dummy_mode = 1;
rng('default');
rng('Shuffle');
quit_key = KbName('ESCAPE');

% Set up the DataPixx2
% Apparently there is a built in dummy mode, but not all functions work, so
% we'll do this for now
if dummy_mode
    Datapixx('Open');
    Datapixx('StopAllSchedules');
    
    % We'll make sure that all the TTL digital outputs are low before we start
    Datapixx('SetDoutValues', 0);
    Datapixx('RegWrRd');
    
    % Configure digital input system for monitoring button box
    % Debounce button presses
    Datapixx('EnableDinDebounce');
    
    % Log button presses to default address
    Datapixx('SetDinLog');
    
    % Turn on logging
    Datapixx('StartDinLog');
    Datapixx('RegWrRd');
end

%% Markers
% 11: Template for disease 1 in lear0ning phase
% 21: Template for disease 2 in learning phase
% 12: Win feedback for disease 1 in learning phase
% 22: Win feedback for disease 2 in learning phase
% 13: Loss feedback for disease 1 in learning phase
% 23: Loss feedback for disease 2 in learning phase
% 51: Confidence rating complete in training
% 52: Confidence rating complete No conflict in DM
% 53: Confidence rating complete One conflict in DM
% 54: Confidence rating complete Two conflicts in DM
% 61: Template in training - Disease 1
% 62: Template No conflict in DM - Disease 1
% 63: Template One conflict in DM - Disease 1
% 64: Template Two conflicts in DM - Disease 1
% 71: Template in training - Disease 2
% 72: Template No conflict in DM - Disease 2
% 73: Template One conflict in DM - Disease 2
% 74: Template Two conflicts in DM - Disease 2
% 101: No conflict in training
% 102: No conflict in DM
% 103: One conflict in DM
% 104: Two conflicts in DM
% 112: Win feedback for disease 1 in decision phase
% 122: Win feedback for disease 2 in decision phase
% 113: Loss feedback for disease 1 in decision phase
% 123: Loss feedback for disease 2 in decision phase

%% Behavioural Legend
% subject_number Phase block_counter block_total trial_counter trial_total ResponseTime BlockAccuracy ConValue conf WinLoss confidence_response ALT AST];

%% Set variables
% Number of blocks and trials
% Total learning blocks
Number_of_blocks = 20;

% Number of decision blocks
Number_of_DM_blocks = 10;

% Trials per block
Number_of_trials = 20;

%How many corrects in a block before moving to next condition
Acc_Num = 18;

% How many times in a row they must get a block correct in learning phase
BlksCorrect = 3;

%Default to 1
CounterBalance = 1;
ImportantValue(1:10,1) = 0;

%Subject Number
p_number = 0;
p_data = [];
taken = 1;

while taken
    clc;
    subject_number = input('Enter the subject number:\n','s');
    data_file_name = strcat('Medical_DM_',subject_number);
    checker = exist(data_file_name);
    
    if checker == 0
        taken = 0;
    else
        disp('Filename Already Exists!');
        taken = 1;
        WaitSecs(1);
    end
end

% Resolution
% Windowed
% [win, rect] = Screen('OpenWindow', 0, [64 64 64], [0 0 800 600]);

% Full Screen
[win, rect] = Screen('OpenWindow',0,[64 64 64],[],32,2);

% width of current resolution
factorw = 1;

% height of current resolution
factorh = 1;

% font size
factorf = 1;

% Can't type into MATLAB
ListenChar(2);

% Setting Parameters
Accuracy = 0;
min_x = rect(1);
min_y = rect(2);
max_x = rect(3);
max_y = rect(4);
mid_x = round(rect(3)/2);
mid_y = round(rect(4)/2);

% Welcome screen
Screen('TextFont',win,'Arial');
Screen('TextSize',win,30*factorf);
DrawFormattedText(win,'Loading...','center','center',[255 255 255]);
Screen('Flip',win);

%Loading Faces
for i=1:247
    Faces{1,i} = sprintf('1(%d)',i);
end

for i=1:110
    Faces{1,i+247} = sprintf('2(%d)',i);
end

FaceImages = Shuffle(Faces);
FaceImage2 = Shuffle(Faces);
FaceImage3 = Shuffle(Faces);
FaceImages = [FaceImages FaceImage2 FaceImage3];

for i=1:length(FaceImages)
    imname = [FaceImages{i} '.bmp'];
    FaceImage{i} = imread(imname);
    FaceImage{i} = imcrop(FaceImage{i},[108,0,425,480]);
end

for counter = 1:length(FaceImages)
    FaceImages{counter} = Screen('MakeTexture', win, FaceImage{counter});
end

% Loading Win Feedback Stimuli
CorrectImg = imread('Correct.jpg');
CorrectImg = Screen('MakeTexture', win, CorrectImg);
KeysImg = imread('Keys.jpg');
KeysImg = Screen('MakeTexture', win, KeysImg);

% Welcome screen
Screen('TextFont',win,'Arial');
Screen('TextSize',win,30);
DrawFormattedText(win,'WELCOME TO MEDICAL DECISION MAKING','center','center',[255 255 255]);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,20);
DrawFormattedText(win,'Press the red button to continue','center',mid_y+120,[255 255 255]);
Screen('Flip',win);

while 1
    [res] = getresponse(dummy_mode);
    if res == 'r'
        break
    end
end

WaitSecs(0.5);

% Instructions
Screen('TextFont',win,'Arial');
Screen('TextSize',win,30);
DrawFormattedText(win,'In this task you will be shown a case study.','center',mid_y-120,[255 255 255]);
DrawFormattedText(win,'You will use the physiological readings','center',mid_y-60,[255 255 255]);
DrawFormattedText(win,'to determine the medical diagnosis.','center',mid_y,[255 255 255]);
DrawFormattedText(win,'You will be rewarded for correct answers.','center',mid_y+60,[255 255 255]);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,20);
DrawFormattedText(win,'Press the red button to continue','center',mid_y+120,[255 255 255]);
Screen('Flip',win);

while 1
    [res] = getresponse(dummy_mode);
    if res == 'r'
        break
    end
end

WaitSecs(0.5);

% PracticeTemplate;
% PracticeSelect;
Screen('TextFont',win,'Arial');
Screen('TextSize',win,30);
DrawFormattedText(win,'In the first phase, you will learn to diagnose two medical conditions','center',mid_y-120',[255 255 255]);
DrawFormattedText(win,'by receiving performance feedback. If you receive 90% or higher three blocks in a row','center',mid_y-60,[255 255 255]);
DrawFormattedText(win,'you will move on to the second phase of the experiment','center',mid_y,[255 255 255]);
DrawFormattedText(win,'In the second phase, you will not be given performance feedback.','center',mid_y+60,[255 255 255]);
DrawFormattedText(win,'Each block consists of 20 trials.','center',mid_y+120,[255 255 255]);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,20);
DrawFormattedText(win,'Press the red button to continue','center',mid_y+180,[255 255 255]);
Screen('Flip',win);

while 1
    [res] = getresponse(dummy_mode);
    if res == 'r'
        break
    end
end

WaitSecs(0.5);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,30);
DrawFormattedText(win,'A checkmark means you got it right','center',mid_y-30,[255 255 255]);
DrawFormattedText(win,'An X means you got it wrong','center',mid_y+30,[255 255 255]);
Screen('TextFont',win,'Arial');
Screen('TextSize',win,20);
DrawFormattedText(win,'Press the red button to continue','center',mid_y+90,[255 255 255]);
Screen('Flip',win);

while 1
    [res] = getresponse(dummy_mode);
    if res == 'r'
        break
    end
end

WaitSecs(0.5);

%% Learning Script
Screen('TextFont',win,'Arial');
Screen('TextSize',win,30);
DrawFormattedText(win,'Training Phase','center','center',[255 255 255]);
Screen('Flip',win);
WaitSecs(1.5);
current_image = 1;
stillGoing = 1;
block_counter = 1;
block_total = 1;
BlockAccuracy = 0;
trial_total = 1;
Phase = 1;
numcorrect = 0;
conflict_marker = 101;
conf = 0;

try
    while block_counter <= Number_of_blocks && stillGoing
        Accuracy = 0;
        
        %Block Display
        for n=block_counter
            outputString = sprintf('Block %d', n);
        end
        
        Screen('TextFont',win,'Arial');
        Screen('TextSize',win,30);
        DrawFormattedText(win,outputString,'center','center',[255 255 255]);
        Screen('TextFont',win,'Arial');
        Screen('TextSize',win,20);
        DrawFormattedText(win,'Press the red button to continue','center',mid_y+100,[255 255 255]);
        Screen('Flip',win);
        
        while 1
            [res] = getresponse(dummy_mode);
            if res == 'r'
                break
            end
        end
        
        WaitSecs(0.5);
        
        for trial_counter = 1:Number_of_trials
            if rand() < 0.5
                %Medical Condition 1
                TemplateMarker = 61;
                WinMarker = 12;
                LossMarker = 13;
                ConValues1
                Int = (.600-.400)*rand()+.400;
                
                if rand() < .5
                    CounterBalance = 1;
                elseif rand() >= .5
                    CounterBalance = 2;
                end
                
                AnsGiven = 0;
                tic
                
                if CounterBalance == 1
                    TwoGreenCorrect
                elseif CounterBalance == 2
                    TwoRedCorrect
                end
                
                Confidence_Rating
            else
                %Medical Condition 2
                TemplateMarker = 71;
                WinMarker = 22;
                LossMarker = 23;
                ConValues2
                Int = (.600-.400)*rand()+.400;
                
                if rand() < .5
                    CounterBalance = 1;
                elseif rand() >= .5
                    CounterBalance = 2;
                end
                
                AnsGiven = 0;
                tic
                
                if CounterBalance == 1
                    TwoRedCorrect
                elseif CounterBalance == 2
                    TwoGreenCorrect
                end
                
                Confidence_Rating
            end
            
            Screen('DrawLine', win, [150 150 150], mid_x-20, mid_y, mid_x+20, mid_y, 2);
            Screen('DrawLine', win, [150 150 150], mid_x, mid_y+20, mid_x, mid_y-20, 2);
            Screen('Flip',win);
            WaitSecs(1);
            this_data_line = [str2num(subject_number) Phase block_counter block_total trial_counter trial_total ResponseTime BlockAccuracy ConValue conf WinLoss confidence_response str2num(Text2) str2num(Text3)];
            dlmwrite(data_file_name,this_data_line,'delimiter', '\t', '-append');
            current_image = current_image+1;
            trial_total = trial_total + 1;
        end
        
        for n = round(Accuracy/Number_of_trials*100)
            outputEarned = sprintf('Accuracy: %d%%', n);
        end
        
        block_total = block_total + 1;
        BlockAccuracy = n;
        
        if Accuracy == Acc_Num || Accuracy > Acc_Num
            Screen('TextFont',win,'Arial');
            Screen('TextSize',win,30);
            DrawFormattedText(win,outputEarned,'center','center',[255 255 255]);
            flipandmark(win,245,dummy_mode)
            WaitSecs(1.5);
            Accuracy = 0;
            numcorrect = numcorrect + 1;
            BlksEarned = sprintf('Block Win Streak: %d', numcorrect);
            Screen('TextFont',win,'Arial');
            Screen('TextSize',win,30);
            DrawFormattedText(win,BlksEarned,'center','center',[255 255 255]);
            Screen('Flip',win)
            WaitSecs(1.5);
        else
            Screen('TextFont',win,'Arial');
            Screen('TextSize',win,30);
            DrawFormattedText(win,outputEarned,'center','center',[255 255 255]);
            flipandmark(win,246,dummy_mode)
            WaitSecs(1.5);
            numcorrect = 0;
            BlksEarned = sprintf('Block Win Streak: %d', numcorrect);
            Screen('TextFont',win,'Arial');
            Screen('TextSize',win,30);
            DrawFormattedText(win,BlksEarned,'center','center',[255 255 255]);
            Screen('Flip',win)
            WaitSecs(1.5);
        end
        
        if numcorrect == BlksCorrect
            stillGoing = 0;
        else
            stillGoing = 1;
        end
        
        block_counter = block_counter + 1;
    end
    
    Cond = 1;
    SurveyTemplate;
    Screen('Flip', win);
    save(data_file_name, 'ImportantValue');
    
    %% Decision Making Script
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,30);
    DrawFormattedText(win,'Diagnosis Phase','center','center',[255 255 255]);
    Screen('Flip',win);
    WaitSecs(1.5);
    stillGoing = 1;
    block_counter = 1;
    block_total = 1;
    trial_total = 1;
    Phase = 2;
    numcorrect = 0;
    
    while block_counter <= Number_of_DM_blocks
        Accuracy = 0;
        
        %Block Display
        for n=block_counter
            outputString = sprintf('Block %d', n);
        end
        
        Screen('TextFont',win,'Arial');
        Screen('TextSize',win,30);
        DrawFormattedText(win,outputString,'center','center',[255 255 255]);
        Screen('TextFont',win,'Arial');
        Screen('TextSize',win,20);
        DrawFormattedText(win,'Press the red button to continue','center',mid_y+100,[255 255 255]);
        Screen('Flip',win);
        
        while 1
            [res] = getresponse(dummy_mode);
            if res == 'r'
                break
            end
        end
        
        WaitSecs(0.5);
        
        for trial_counter = 1:Number_of_trials
            if rand() < 0.5
                %Medical Condition 1B
                WinMarker = 112;
                LossMarker = 113;
                ConValues1DM
                Int = (.600-.400)*rand()+.400;
                
                if rand() < .5
                    CounterBalance = 1;
                else rand() >= .5;
                    CounterBalance = 2;
                end
                
                AnsGiven = 0;
                tic
                
                if CounterBalance == 1
                    TwoGreenCorrectDM
                elseif CounterBalance == 2
                    TwoRedCorrectDM
                end
                
                Confidence_Rating
            else
                %Medical Condition 2
                WinMarker = 122;
                LossMarker = 123;
                ConValues2DM
                Int = (.600-.400)*rand()+.400;
                
                if rand() < .5
                    CounterBalance = 1;
                elseif rand() >= .5
                    CounterBalance = 2;
                end
                
                AnsGiven = 0;
                tic
                
                if CounterBalance == 1
                    TwoRedCorrectDM
                elseif CounterBalance == 2
                    TwoGreenCorrectDM
                end
                
                Confidence_Rating
            end
            
            this_data_line = [str2num(subject_number) Phase block_counter block_total trial_counter trial_total ResponseTime BlockAccuracy ConValue conf WinLoss confidence_response str2num(Text2) str2num(Text3)];
            dlmwrite(data_file_name,this_data_line,'delimiter', '\t', '-append');
            current_image = current_image+1;
            trial_total = trial_total + 1;
        end
        
        n = round(Accuracy/Number_of_trials*100);
        block_total = block_total + 1;
        BlockAccuracy = n;
        
        if Accuracy == Acc_Num || Accuracy > Acc_Num
            Accuracy = 0;
            numcorrect = numcorrect + 1;
        else
            numcorrect = 0;
        end
        
        block_counter = block_counter + 1;
    end
    
    %% Thank you for playing screen
    Screen('TextFont',win,'Arial');
    Screen('TextSize',win,30);
    DrawFormattedText(win,'THANK YOU FOR PARTICIPATING','center','center',[255 255 255]);
    Screen('Flip',win);
    WaitSecs(3);
    this_data_line = [str2num(subject_number) Phase block_counter block_total trial_counter trial_total ResponseTime BlockAccuracy ConValue conf WinLoss confidence_response str2num(Text2) str2num(Text3)];
    dlmwrite(data_file_name,this_data_line,'delimiter', '\t', '-append');
    Screen('CloseAll');
    
    % Can type into MATLAB
    ListenChar(1);
    
    % Close the DataPixx2
    if dummy_mode
        Datapixx('Close');
    end
    
catch ME
    Screen('CloseAll');
    
    % Can type into MATLAB
    ListenChar(1);
    
    % Close the DataPixx2
    if dummy_mode
        Datapixx('Close');
    end
    
    disp(ME.message);
end