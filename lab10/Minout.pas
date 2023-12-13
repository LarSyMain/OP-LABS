unit Minout;


interface
  uses Mtypes;
  procedure Get(var x : matrix; var n : integer; var f : TextFile);
  procedure Put(var ans : integer; var f : TextFile);

implementation

procedure Get(var x : matrix; var n : integer; var f : TextFile);
  begin
      
      readln(f, n);
      for var i := 1 to n do
      begin
        for var j := 1 to n do
        begin
          read(f, x[i,j]);
        end;
      end;
      
  end;

procedure Put(var ans : integer; var f : TextFile);
    begin
      
      writeln(f, ans);
      
    end;

end.
