program Strings;

function len(s : string) : integer;
begin
  var c, a : integer;
  s := s + '`';
  c := 0;
  a := 1;
  while True do
  begin
    if s[a] = '`' then
      break;
    a := a + 1;
    c := c + 1;
  end;
  len := c;
end;

var f : TextFile;
var en3:=Encoding.GetEncoding(65001);
var s : string;


begin
  
  var count, i, n : integer;
  var flag : string;
  
 
  
  AssignFile(f, 'input.txt');
  Reset(f, en3);
 



  while not eof(f) do
  begin
  count := 0;
  readln(f, s);
  
  n := len(s);
  
  for i := 1 to n do
    begin
    if s[i] = ' ' then
      count := count + 1;
    if ((count mod 2) <> 0)  then
       write(s[i]);
    end;
  writeln('');
  end;
  
  
  CloseFile(f);
end.
