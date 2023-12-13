unit Mans;

interface
  uses Mtypes;
  function UpD(var x : matrix; var n : integer) : integer;
  function Trans(var x : matrix; var n : integer) : matrix;
  
implementation

function UpD(var x : matrix; var n : integer) : integer;
  begin
    var k := 0;
    result := 1;
    for var i := 1 to n-1 do
    begin
      for var j := i + 1 to n do
      begin
        if(x[i,j] < 0) then
          begin
          result := result * x[i,j];
          k := k + 1;
          end;
      end;
    end;
    if (k = 0) then
      begin
      result := 0;
      end
    else
      begin
      result := abs(result);
      end;
  end;
  
function Trans(var x : matrix; var n : integer) : matrix;
  begin
    for var i := 1 to n do
      begin
        for var j := 1 to n do
        begin
          result[i,j] := x[j,i];
        end;
      end;
  end;

end.
