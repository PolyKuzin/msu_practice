program kuzin_5_1;

uses crt;

var fst, snd, res : real;
    space, sign   : char;
    errorFlag     : boolean;

begin
    errorFlag := false;
    writeln('Введите выражение вида: Число ПРОБЕЛ знак выражения ПРОБЕЛ Число:');
    readln(fst, space, sign, snd);
    if snd <> 0 then
        begin
            case sign of
                '+': res := fst + snd;
                '-': res := fst - snd;
                '*': res := fst * snd;
                '/': res := fst / snd;
                else errorFlag := true;
        end;
        if errorFlag then 
            writeln('ОШИБКА: Неверная операция')
        else 
            writeln('Результат операции:', res:1:2)
    end
    else writeln('Деление на ноль невозможно')
end.