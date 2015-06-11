destination = copyB(:,4);
[unique_strings, ~, string_map]=unique(destination);
[a,b] = hist(string_map,unique(string_map));
b = b';
destination_frequency = [a;b];
[Y,I] = sort(destination_frequency(1,:),'descend');
destination_frequency = destination_frequency(:,I);
split_value_one = length(unique_strings)/3;
split_value_two = split_value_one * 2;
for i = 1:size(destination_frequency,2)
    name_index = destination_frequency(2,i);
    destination_name = unique_strings(name_index);
    for j = 2:size(copyB,1)
         if strcmp(copyB(j,4), destination_name) 
             if i < split_value_one
                 copyB(j,4) = num2cell(1);
             elseif i < split_value_two
                 copyB(j,4) = num2cell(2);
             else
                 copyB(j,4) = num2cell(3);
             end
         end
    end
end