x = input ('Masukan nilai IP : ');
if (x > 85)
    fprintf ('Anda dapat A\n');
elseif (x >= 80 & x < 85)
    fprintf ('Anda dapat A-\n');
elseif (x >= 75 & x < 80)
    fprintf ('Anda dapat B+\n');
elseif (x >= 70 & x < 75)
    fprintf ('Anda dapat B\n');
elseif (x >= 65 & x < 70)
    fprintf ('Anda dapat C+\n');
else
    fprintf ('Anda dapat C\n');
end