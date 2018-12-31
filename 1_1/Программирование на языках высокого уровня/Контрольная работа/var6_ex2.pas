program var6_ex2;

var
  a, b, c, d, e, x1, x2, disc: real;

begin
  writeln('��������� ������ ��������� ���: (x-a)(x-b)=c.');
  write('������� ����������� a: ');
  readln(a);
  write('������� ����������� b: ');
  readln(b);
  write('������� ����������� c: ');
  readln(c);
  if(c = 0) then      //��� c = 0
    begin
      x1:=a; x2:=b;
      writeln('����� ���������: x1=', x1, ', x2=', x2);
      exit;          //������� �� ���������
    end
  else
  begin
    {��� ��������� ������ �������� x^2 - bx - ax + ab - c = 0 }
    e:=-b-a; //bx-ax    
    d:=a*b-c; //ab - c
    { �������� x^2 - ex + d }
    disc:= sqr(e) - (4 * d);
    if (disc < 0) then //���� ������������ ������ ����
      begin
        writeln('�������������� ������ ���.');
        exit;          //������� �� ���������
      end
    else
      begin
        x1:= (-e - sqrt(disc)) / 2;
        x2:= (-e + sqrt(disc)) / 2;
      end;
  end;
  writeln('����� ���������: x1=', x1, ', x2=', x2); //����� �����������
end.