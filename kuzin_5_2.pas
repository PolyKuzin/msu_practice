program kuzin_5_2;

uses crt;
 
const RomeDigits: array [1..13] of string[2] = ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M');
 
ArabicNumbers: array [1..13] of integer = (1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000);

var
numb: integer;

function ArabicToRome (n: integer): string;
var i   : integer;
    res : string;
begin
    res := '';
    i   := 13;
    while n > 0 do begin
        while ArabicNumbers[i] > n do
            i := i-1;
            res := res + RomeDigits[i];
            n := n - ArabicNumbers[i];
        end;
    ArabicToRome := res;
end;
 
begin
    write('Введите арабское число: ');
    readln(numb);
    writeln('Римская запись = ', ArabicToRome(numb));
end.