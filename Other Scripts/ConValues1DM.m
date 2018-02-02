ConValue = 1;

%Cholestatic Extrahepatic
%Heart Rate
a = 65;
b = 85;
Range1 = round((b-a).*rand()+a);
Range1 = sprintf('%d', Range1);
%Systolic / Diastolic Blood Pressure
c = 120;
d = 140;
e = 70;
f = 80;
Range2a = round((d-c).*rand()+c);
Range2b = round((f-e).*rand()+e);
Range2 = sprintf('%d/%d', Range2a,Range2b);
% O2
g = 98;
h = 98;
Range3 = round((h-g).*rand()+g);
Range3 = sprintf('%d', Range3);
% RR
i = 12;
j = 20;
Range4 = round((j-i).*rand()+i);
Range4 = sprintf('%d', Range4);
% Temp
k = 35.5;
l = 37;
Range5 = ((l-k).*rand()+k);
Range5 = sprintf('%.1f', Range5);

if rand() <= .125 %ALT Conflict.
    conflict_marker = 103;
     TemplateMarker = 63;
    conf = 1;
    %ALT
    m= 51;
    n= 69;
    %AST
    o= 350;
    p= 500;
elseif rand() > .125 && rand() <= .25 %AST Conflict
    conflict_marker = 103;
     TemplateMarker = 63;
    conf = 2;
    %ALT
    m= 10;
    n= 50;
    %AST
    o= 276;
    p= 349;
elseif rand() > .25 && rand() <= .50 %ALT & AST Conflict
    conflict_marker = 104;
    TemplateMarker = 64;
    conf = 3;
    %ALT
    m= 51;
    n= 69;
    %AST
    o= 276;
    p= 349;
else %No Conflict
    conflict_marker = 102;
    TemplateMarker = 62;
    conf = 4;
    %ALT
    m= 10;
    n= 50;
    %AST
    o= 350;
    p= 500;
end

%ALT
Text2 = round((n-m).*rand()+m);
Text2 = sprintf('%d', Text2);
%AST
Text3 = round((p-o).*rand()+o);
Text3 = sprintf('%d', Text3);


%ALP
q= 10;
r= 50;
Text4 = round((r-q).*rand()+q);
Text4 = sprintf('%d', Text4);
%GGT
s= 200;
t= 400;
Text5 = round((t-s).*rand()+s);
Text5 = sprintf('%d', Text5);

Text1 = 'Male Patient presents with abnormal tests (below).';
Text6 = 'No abnormal';