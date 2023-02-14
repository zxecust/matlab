fid=fopen("04asciiData.txt",'r');
i=1;
while ~feof(fid)
    name(i,:)=fscanf(fid,'%5c',1);
    year(i)=fscanf(fid,'%d',1);
    no1(i)=fscanf(fid,'%d',1);
    no2(i)=fscanf(fid,'%d',1);
    no3(i)=fscanf(fid,'%g',1);
    no4(i)=fscanf(fid,'%g\n');
    i=i+1;
end
fclose(fid);