delay = copyB(:,5);

for i = 2:size(delay,1)
    if cellfun('isempty',delay(i)) || str2double(delay(i)) <= 0
        copyB(i,9) = num2cell(0);
    else
        copyB(i,9) = num2cell(1);
    end
end