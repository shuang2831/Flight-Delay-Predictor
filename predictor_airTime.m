copyB = B;

air_time = copyB(:,7);
air_time = str2double(air_time);



for i = 2:size(air_time,1)
    if air_time(i) >= 300
        air_time_group = 7;
    elseif air_time(i) >= 240
        air_time_group = 6;
    elseif air_time(i) >= 180
        air_time_group = 5;
    elseif air_time(i) >= 120
        air_time_group = 4;
    elseif air_time(i) >= 90
        air_time_group = 3;
    elseif air_time(i) >= 60
        air_time_group = 2;
    else
        air_time_group = 1;  
    end
    copyB(i,7) = num2cell(air_time_group);
end