program kuzin_6_2;

var m : integer;
    num0, num1, num2 : integer;

begin
    writeln('Введите число больше 1');
    readln(m);
    num1 := 1;
    num2 := 1;
    while num2 <= m do 
    begin
        num0 := num2;
        num2 := num1 + num2;
        num1 := num0;
    end;
    writeln(num2);
end.