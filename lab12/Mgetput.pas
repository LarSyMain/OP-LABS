unit Mgetput;

interface
  uses Mtypes;
  procedure Get(var x : matrix; var n,m : integer; var f : TextFile);
  procedure Put(var ans : mas; ans1 : real; var f : TextFile);

implementation

procedure Get(var x : matrix; var n,m : integer; var f : TextFile);
  begin
      
      readln(f, n);
      readln(f, m);
      for var i := 1 to n do
      begin
        for var j := 1 to m do
        begin
          read(f, x[i,j]);
        end;
      end;
      
  end;

procedure Put(var ans : mas; ans1 : real; var f : TextFile);
    begin
      
      for var i := 1 to 3 do
        write(f, ans[i], ' ');
      writeln(f, ' вектор y');
      writeln(f, ans1, ' максимальное значение')
      
    end;

end.