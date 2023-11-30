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
  arrA1, arrB1, arrC1 : matrix;
  arrA2, arrB2, arrC2 : mas;
  na, ma, la : integer;
  nb, mb, lb : integer;
  nc, mc, lc : integer;
  Wa, Wb, Wc : integer;
  a, b, c : integer;

procedure Get(var x: matrix; var n, m, W: integer; var f: TextFile);
    begin
        
      
      Readln(f,n);
      Readln(f,m);
      Readln(f,W);
      for var i := 1 to n do
      begin
        for var j := 1 to m do
          read(f, x[i,j]);
      end;
              
    end;

procedure Put(const x: mas;  var g : integer; var f: TextFile);
  begin    
      for var i := 1 to g do
        write(f, x[i], ' ');
      writeln(); 
  end;

procedure EvenElements(const x: matrix; var y: mas; const n, m, W, ne, me : integer; var g :integer);
  begin
    
    var ki, kj : integer;
    
    for var i := ne to n do
    begin
      for var j := me to m do
      begin
        if x[i,j] <> W then
         begin 
          ki := i;
          kj := j;
         end;
      end;
    end;
    g := 0;
    for var i := ne to n do
    begin
      for var j := me to m do 
      begin
        if (i <> ki) then
          begin
            g := g + 1;
            y[g] := x[j,i];
          end;
      end;
    end;
end;

begin
  
  AssignFile(fin, 'input2.txt');	       { Открываем файл }
  Reset(fin);
  Get(arrA1, na, ma, Wa, fin);
  Get(arrB1, nb, mb, Wb, fin);
  Get(arrC1, nc, mc, Wc, fin);
  CloseFile(fin);
  
  // for A
  a := 0;
  EvenElements(arrA1, arrA2, na, ma, Wa, na div 2 + 1, 1, a);
  b := 0;
  EvenElements(arrB1, arrB2, nb+2, (mb div 2) - 1, Wb, 1, 1, b); // n, m, W, ne, me
  c := 0;
  EvenElements(arrC1, arrC2, nc, mc, Wc, 1, mc div 2 + 1, c);
  
  
  
  
  AssignFile(fout, 'out.txt');	       
  Rewrite(fout);
  Put(arrA2, a ,fout);
  writeln(fout,'');
  Put(arrB2, b ,fout);
  writeln(fout,'');
  Put(arrC2, c ,fout);
  CloseFile(fout);
  
  
  
end.
