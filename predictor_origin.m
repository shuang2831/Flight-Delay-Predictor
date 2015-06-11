origin = copyB(:,3);
[unique_strings, ~, string_map]=unique(origin);
[a,b] = hist(string_map,unique(string_map));
b = b';
origin_frequency = [a;b];
[Y,I] = sort(origin_frequency(1,:),'descend');
origin_frequency = origin_frequency(:,I);
split_value_one = length(unique_strings)/3;
split_value_two = split_value_one * 2;
for i = 1:size(origin_frequency,2)
    name_index = origin_frequency(2,i);
    origin_name = unique_strings(name_index);
    for j = 2:size(copyB,1)
         if strcmp(copyB(j,3), origin_name) 
             if i < split_value_one
                 copyB(j,3) = num2cell(1);
             elseif i < split_value_two
                 copyB(j,3) = num2cell(2);
             else
                 copyB(j,3) = num2cell(3);
             end
         end
    end
end
