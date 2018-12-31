program var6_ex5;

const
  n=5;  { количество строк }
  m=4;  { количество столбцов }
var
  A: array[1..n, 1..m] of integer;
  i, j, min, ai, aj: integer;
  contin: boolean;
  
begin
  { заполнение массива случайными числами от -99 до 99 }
  randomize;  
  for i:=1 to n do
    for j:=1 to m do
    A[i,j]:=random(100)-random(100);  
  { Вывод на экран всех элементов массива }
  for i:=1 to n do
    begin
      for j:=1 to m do
        write('A[', i, ',', j, ']=', A[i,j], ', ');
      writeln();
    end;
  { Нахождение первого положительного числа }
  contin:=true;
  for i:=1 to n do
  begin
    if (contin = false) then break;
    for j:=1 to m do      
      if (A[i,j] > 0) then //Если положительное число найдено,
        begin              //запоминаем его и прерываем проверку
          ai:=i;
          aj:=j;
          min:=A[i,j];
          contin:=false;
          break;
        end
  end;
  { Нахождение минимального положительного элемента массива }
  for i:=1 to n do
    for j:=1 to m do
      if (A[i,j] > 0) and (A[i,j] < min) then
        begin
          ai:=i;
          aj:=j;
          min:=A[i,j];
        end;
  {вывод результатов}
  if (ai=0) and (aj=0) and (min=0) then
    writeln('Положительные числа в массиве отсутствуют')
  else
    writeln('Минимальный положительный элемент массива: A[', 
                                      ai, ',', aj, ']=', min);
end.