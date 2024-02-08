Program mn;

type
  mnoj = set of 'A'..'z';

var
  f : TextFile;
  mn1, mn2, ans : mnoj;
  s : string;
  n : integer;
begin
  AssignFile(f, 'input.txt');
  Reset(f);
  Readln(f,s);
  n := length(s);
  for var i := 1 to n do
  begin
    include(mn1, s[i]);
  end;
  Readln(f, s);
  n := length(s);
  for var i := 1 to n do
  begin
    include(mn2, s[i]);
  end;
  CloseFile(f);
  
  for var i := 'A' to 'z' do
  begin
    if(i in mn1) then
      write(i);
  end;
  writeln();
  for var i := 'A' to 'z' do
  begin
    if(i in mn2) then
      write(i);
    end;
  
  ans := mn1 + mn2; //объединение
  
  writeln();
  for var i := 'A' to 'z' do
  begin
    if(i in ans) then
      write(i);
    end;
  
  
  ans := mn1 * mn2; //пересечение
  
  writeln();
  for var i := 'A' to 'z' do
  begin
    if(i in ans) then
      write(i);
    end;
    
    
  ans := mn1 - mn2; //разность
  
  writeln();
  for var i := 'A' to 'z' do
  begin
    if(i in ans) then
      write(i);
    end;
end.
