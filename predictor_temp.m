copyB = B;
airline = copyB(:,2);
[unique_strings, ~, string_map]=unique(airline);
[a,b] = hist(string_map,unique(string_map));
b = b';
airline_frequency = [a;b];
[Y,I] = sort(airline_frequency(1,:),'descend');
airline_frequency = airline_frequency(:,I);
split_value_one = length(unique_strings)/3;
split_value_two = split_value_one * 2;
for i = 1:size(airline_frequency,2)
    name_index = airline_frequency(2,i);
    airline_name = unique_strings(name_index);
    for j = 2:size(copyB,1)
         if strcmp(copyB(j,2), airline_name) 
             if i < split_value_one
                 copyB(j,2) = num2cell(1);
             elseif i < split_value_two
                 copyB(j,2) = num2cell(2);
             else
                 copyB(j,2) = num2cell(3);
             end
         end
    end
end
