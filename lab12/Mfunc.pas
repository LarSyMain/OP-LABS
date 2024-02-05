unit Mfunc;

interface
  uses Mtypes, Mfx;
  function max(var x : matrix; n, m : integer) : integer;
  function sred(var x : matrix; n,m : integer; f : fun) : real;
  function vec(var x : matrix; n, m : integer) : mas;
  
implementation

function max(var x : matrix; n, m : integer) : integer;
begin
  result := x[1,1];
  for var i := 1 to n do
  begin
    for var j := 1 to m do
    begin
      if (x[i,j] > result) then
        result := x[i,j];
    end;
  end;
end;

function sred(var x : matrix; n,m : integer; f : fun) : real;
var
  sum : real;
  k : integer;
begin
  sum := 0;
  k := 0;
  for var i := 1 to n do
  begin
    for var j := 1 to m do
    begin
      if( f(x[i,j]) >= 0 ) then
      begin
        sum := sum + x[i,j];
        k := k + 1;
      end;
    end;
  end;
  if(k > 0) then
  begin
    sred := sum / k;
  end
  else
  begin
    sred := 0;
  end;
end;

function vec(var x : matrix; n, m : integer) : mas;
var
  arr : mas;
  flag : boolean;
  i, j : integer;
  
begin
  arr[1] := 1;
  arr[2] := 1;
  arr[3] := 1;
  j := 1;
  while (j <= m) do
  begin
    flag := True;
    i := 1;
    while ((i <= n) and (flag = True)) do
    begin
      if(x[i,j] < 0) then
      begin
        arr[j] := 0;
        flag := False
      end;
      i := i + 1;
    end;
    j := j + 1;
  end;
  vec := arr;
end;

end.