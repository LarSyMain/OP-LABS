//Даны три прямоугольные матрицы a, b и c разного размера. Сформировать массивы, содержащие элементы матриц,
//которые расположены в столбцах левее последнего (при просмотре по столбцам) элемента, неравного заданному числу, в соответствующей части матрицы. 
//Для матрицы a обрабатывать правую половину, для матрицы b – верхнюю половину, для матрицы c – нижнюю половину.
Program lab8;

const
  nmax = 20;

type
  matrix = array [1..nmax, 1..nmax] of integer;
  mas = array [1..nmax] of integer;
  
var
  fin, fout: TextFile;
  arr1 : matrix;
  arr2 : mas;
  n, m : integer;
  W : integer;

procedure Get(var x: matrix; var n, m, W: integer; var f: TextFile);
    begin
      AssignFile(f, 'input.txt');	      
      Reset(f);
      Readln(f,n);
      Readln(f,m);
      Readln(f,W);
      for var i := 1 to n do
      begin
        for var j := 1 to m do
          read(f, x[i,j]);
      end;
      CloseFile(f); 	        
    end;

procedure Put(const x: mas;  var n : integer; var f: TextFile);
  begin
    AssignFile(f, 'out.txt');	      
      Rewrite(f);
      
      for var i := 1 to nmax do
        write(f, x[i], ' ');
      
      CloseFile(f); 	      
  end;

procedure EvenElements(const x: matrix; var y: mas; var n,m, W: integer);
  begin
    
    var k, g : integer;
    
    for var i := 1 to n do
    begin
      for var j := 1 to m do
      begin
        if x[i,j] <> W then
          k := i
      end;
    end;
    g := 0;
    for var i := n to k-1 do
    begin
      for var j := 1 to m do 
      begin
        g := g + 1;
        y[g] := x[j,i];
      end;
    end;
end;

begin
  
  AssignFile(fin, 'input.txt');	       { Открываем файл }
  Reset(fin);
  Get(arr1, n, m, W, fin);
  //CloseFile(fin);
  
  // for A
  n := n div 2;
  n := n + 1;
  EvenElements(arr1, arr2, n, m, W);
  
  AssignFile(fout, 'out.txt');	       { Открываем файл }
  Rewrite(fout);
  Put(arr2, n ,fout);
  //CloseFile(fout);
  
  
  
end.
