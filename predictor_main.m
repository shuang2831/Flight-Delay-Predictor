clear;
fid = fopen('2010_1_delay.csv', 'r');
tline = fgetl(fid);
%  Split header
B(1,:) = regexp(tline, '\,', 'split');
%  Parse and read rest of file
ctr = 1;
ctr2 = 2;
while(~feof(fid))
if ischar(tline)    
      ctr = ctr + 1;
      tline = fgetl(fid);
      if mod(ctr, 5) == 0
        B(ctr2,:) = regexp(tline, '\,', 'split');
        ctr2 = ctr2 + 1;
      end
else
      break;     
end
end
fclose(fid);