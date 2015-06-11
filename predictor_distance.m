distance = copyB(:,8);
distance = str2double(distance);

split = 250;

for i = 2:size(distance,1)
    if distance(i) >= 3000
        distance_group = 17;
    else
        distance_group = fix(distance(i)/split) + 1; %get the integer part of division
    end
    copyB(i,8) = num2cell(distance_group);
end