//Даны три матрицы a, b и c разного размера.
//Какая из матриц имеет максимальное значение суммы нечётных элементов, расположенных выше главной/побочной диагонали и на ней?

Program lab9;

const 
  nmax = 10;

type
  matrix = array [1..nmax, 1..nmax] of integer;
  mas = array [1..nmax] of integer;
var
  i, j : integer;
  na, nb, nc : integer;
  arrA, arrB, arrC : matrix;
  sAm, sBm, sCm : integer;
  sAd, sBd, sCd : integer;
  f, fout : TextFile;
  ansArr : mas;
  m : integer;
  
procedure Get(var arr: matrix; var n : integer; var f: TextFile);
    begin      
      Readln(f,n);
      for var i := 1 to n do
      begin
        for var j := 1 to n do
          read(f, arr[i,j]);
      end;            
    end;

procedure Put(var ans : integer; var f: TextFile);
  begin    
      writeln(f, ans);
  end;

function SumMainD(const arr: matrix; n : integer): integer;
var
  i, j: integer;
begin
  result := 0;
  for i := 1 to n-1 do
  begin
    for j := i + 1 to n do
    begin
      if (arr[i,j] mod 2 <> 0) then
        result := result + arr[i, j];
    end;
  end;
end;

function SumSideD(const arr: matrix; n : integer): integer;
var
  i, j: integer;
begin
  result := 0;
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      if (j < n + 1 - i) then
      begin
        if (arr[i,j] mod 2 <> 0) then
          result := result + arr[i,j];
      end;
    end;
  end;
end;

begin
  
  AssignFile(f, 'input.txt');
  Reset(f);
  
  Get(arrA, na, f);
  Get(arrB, nb, f);
  Get(arrC, nc, f);
  
  CloseFile(f);
  
  sAm := SumMainD(arrA, na);
  sBm := SumMainD(arrB, nb);
  sCm := SumMainD(arrC, nc);
  
  AnsArr[1] := sAm;
  AnsArr[2] := sBm;
  AnsArr[3] := sCm;
  
  sAd := SumSideD(arrA, na);
  sBd := SumSideD(arrB, nb);
  sCd := SumSideD(arrC, nc);
  
  AssignFile(fout, 'out.txt');
  Rewrite(fout);
  
  m := 0;
  for i := 1 to 3 do
    begin
    if(AnsArr[i] > m) then
      m := AnsArr[i] 
    end;
   
  write(fout, 'выше главной диагонали:'); 
  Put(m, fout);
  if (m = sAm) and (m = sBm) and (sAm = sBm) then
    begin
    writeln(fout, 'sAm = sBm');
    end
  else if (m = sAm) and (m = sCm) and (sAm = sCm) then
    begin
    writeln(fout, 'sAm = sCm');
    end
  else if (m = sBm) and (m = sCm) and (sCm = sBm) then
    begin
    writeln(fout, 'sBm = sCm');
    end
  else if (m = sBm) and (m = sCm) and (m = sAm) and (sCm = sBm) and (sAm = sCm) then
    begin
    writeln(fout, 'sAm = sBm = sCm');
    end;  
  
  writeln(fout);
  
  AnsArr[1] := sAd;
  AnsArr[2] := sBd;
  AnsArr[3] := sCd;
  
  m := 0;
  for i := 1 to 3 do
    begin
    if(AnsArr[i] > m) then
      m := AnsArr[i] 
    end;
  
  write(fout, 'выше побочной диагонали:');
  Put(m, fout);
  if (m = sAd) and (m = sBd) and (sAd = sBd) then
    begin
    writeln(fout, 'sAd = sBd');
    end
  else if (m = sAd) and (m = sCd) and (sAd = sCd) then
    begin
    writeln(fout, 'sAd = sCd');
    end
  else if (m = sBd) and (m = sCd) and (sCd = sBd) then
    begin
    writeln(fout, 'sBd = sCd');
    end
  else if (m = sAd) and (m = sBd) and (m = sCd) and (sCd = sBd) and (sAd = sBd) then
    begin
    writeln(fout, 'sAd = sBd = sCd');
    end;
  
  CloseFile(fout);
  
end.
