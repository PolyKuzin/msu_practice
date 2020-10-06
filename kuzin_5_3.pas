program kuzin_5_3;

type month = ( jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec );

var d : 28..31;   
    m : month;
    num : integer;

function CheckForNumberOfDays(m : month) : integer;
begin
    case m of
        feb : d := 28;
        apr, jun, sep, nov : d := 30;
        jan, mar, may, jul, aug, oct, dec : d := 31;
        else writeln('ERROR');
    end;
    CheckForNumberOfDays := d;
end;

begin
    writeln('Введите номер месяца:');
    readln(num);
    m := month(num - 1);
    writeln(CheckForNumberOfDays(m));
end.