program var6_ex2;

var
  a, b, c, d, e, x1, x2, disc: real;

begin
  writeln('Программа решает уравнения тип: (x-a)(x-b)=c.');
  write('Введите коэффициент a: ');
  readln(a);
  write('Введите коэффициент b: ');
  readln(b);
  write('Введите коэффициент c: ');
  readln(c);
  if(c = 0) then      //при c = 0
    begin
      x1:=a; x2:=b;
      writeln('Корни уравнений: x1=', x1, ', x2=', x2);
      exit;          //выходим из программы
    end
  else
  begin
    {при раскрытии скобок получаем x^2 - bx - ax + ab - c = 0 }
    e:=-b-a; //bx-ax    
    d:=a*b-c; //ab - c
    { получаем x^2 - ex + d }
    disc:= sqr(e) - (4 * d);
    if (disc < 0) then //если дискриминант меньше нуля
      begin
        writeln('Действительных корней нет.');
        exit;          //выходим из программы
      end
    else
      begin
        x1:= (-e - sqrt(disc)) / 2;
        x2:= (-e + sqrt(disc)) / 2;
      end;
  end;
  writeln('Корни уравнений: x1=', x1, ', x2=', x2); //вывод результатов
end.