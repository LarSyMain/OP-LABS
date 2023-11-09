Program lab7;


var
  f : TextFile;
  out_f: file of real;
  n, i, j : integer;
  x, y : real;
  
begin
  
  AssignFile(f, 'input3.txt');
  Reset(f);
  readln(f,n);
  
  AssignFile(out_f, 'out.txt');
  Rewrite(out_f);
  for i := 0 to n-1 do
      begin
        read(f, x);
        if ((-4.9 <= x) and (x <= 1.9)) then
        begin
          write(x:2:1, ' ');
          write(out_f, x);
          if (x < 0) then
            j := i;
        end;
        
      end;
  CloseFile(f);
  
  seek(out_f, j);
  read(out_f, x);
  if x > 0 then
  begin
    
  end
  else
    begin
      n := FileSize(out_f);
      while (j < (n-1)) do
        begin
          Seek(out_f, j);
          read(out_f, x);
          Seek(out_f, j+1);
          read(out_f, y);
          Seek(out_f, j);
          out_f.Write(y);
          Seek(out_f, j+1);
          out_f.Write(x);
          j := j + 1;
        end;
    end;
  writeln();  
  for i := 0 to FileSize(out_f)-1 do
          begin
            Seek(out_f, i);
            read(out_f, x);
            write(x:2:1, ' ');
          end;
  CloseFile(out_f);
end.
