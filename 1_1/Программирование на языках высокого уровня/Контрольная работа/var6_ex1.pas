program var6_ex1;

var
  x1, y1, x2, y2, x3, y3: integer;  //���������� ������ ������������
  ab, bc, ca: real; //����� ������ ������������
  xm, ym: real;     //���������� ������ �������
  am, bm, cm: real; //���������� �� ������ ������� �� ������

begin
  { ���� ������ }
  write('������� ���������� ����� A: ');
  readln(x1, y1);
  write('������� ���������� ����� B: ');
  readln(x2, y2);
  write('������� ���������� ����� C: ');
  readln(x3, y3);
  { ������ ���� ������ ������������ }
  ab := sqrt(sqr(x2 - x1) + sqr(y2 - y1));
  bc := sqrt(sqr(x3 - x2) + sqr(y3 - y2));
  ca := sqrt(sqr(x1 - x3) + sqr(y1 - y3));
  { ����� ������ }
  writeln('���������� ����� A=[', x1, ', ', y1, ']');
  writeln('���������� ����� B=[', x2, ', ', y2, ']');
  writeln('���������� ����� C=[', x3, ', ', y3, ']');
  writeln('����� AB = ', ab:0:2);
  writeln('����� BC = ', bc:0:2);
  writeln('����� CA = ', ca:0:2);
  { ������ ��������� ������ ������� }
  xm := (x1 + x2 + x3) / 3; //��������� x ������ �������
  ym := (y1 + y2 + y3) / 3; //��������� y ������ �������
  writeln('���������� ������ ������� M=[', xm:0:2, ', ', ym:0:2, ']'); //����� ������
  am:=sqrt(sqr(xm - x1) + sqr(ym - y1)); //���������� �� ������� �
  bm:=sqrt(sqr(xm - x2) + sqr(ym - y2)); //���������� �� ������� B
  cm:=sqrt(sqr(xm - x3) + sqr(ym - y3)); //���������� �� ������� C
  { ����� ������ }
  writeln('���������� �� ����� M �� ������� � = ', am:0:2);
  writeln('���������� �� ����� M �� ������� B = ', bm:0:2);
  writeln('���������� �� ����� M �� ������� C = ', cm:0:2);
end.