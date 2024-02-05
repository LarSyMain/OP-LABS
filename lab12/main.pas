//Для той из матриц, в которой меньше среднее арифметическое элементов, для которых значение f(xij) неотрицательно,
//получить вектор y по правилу: yj = 0, если в j-ом столбце матрицы есть хотя бы один отрицательный элемент, иначе yj = 1.
//Для другой матрицы найти максимальный элемент.

Program lab12;

uses Mtypes, Mgetput, Mfunc, Mfx;

var
  x1, x2 : matrix;
  n1, m1, n2, m2 : integer;
  f, fout : TextFile;
  p1, p2 : real;

begin

  AssignFile(f, 'input1.txt');  
  Reset(f);
  Get(x1, n1, m1, f);
  Get(x2, n2, m2, f);
  CloseFile(f);
  
  p1 := sred(x1, n1, m1, feqx);
  p2 := sred(x2, n2, m2, feqx);
  
  AssignFile(fout, 'out.txt');  
  Rewrite(fout);
  
  if (p1 < p2) then
  begin
    var ans1 : mas;
    var ans2 : real;
    ans1 := vec(x1, n1, m1);
    ans2 := max(x2, n2, m2);
    Put(ans1, ans2, fout);
  end
  else if (p1 > p2) then
  begin
    var ans2 : mas;
    var ans1 : real;
    ans2 := vec(x2, n2, m2);
    ans1 := max(x1, n1, m1);
    Put(ans2, ans1, fout);
  end
  else
  begin
    writeln(fout,'среднее значение матриц равны');
  end;
  
  p1 := sred(x1, n1, m1, f2);
  p2 := sred(x2, n2, m2, f2);
  
  
  if (p1 < p2) then
  begin
    var ans1 : mas;
    var ans2 : real;
    ans1 := vec(x1, n1, m1);
    ans2 := max(x2, n2, m2);
    Put(ans1, ans2, fout);
  end
  else if (p1 > p2) then
  begin
    var ans2 : mas;
    var ans1 : real;
    ans2 := vec(x2, n2, m2);
    ans1 := max(x1, n1, m1);
    Put(ans2, ans1, fout);
  end
  else
  begin
    write(fout, 'среднее значение матриц равны');
  end;
  
  
  CloseFile(fout);
end.