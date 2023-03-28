--set serveroutput on size 2000;
DECLARE
    var1 number(4) := &var1;
    var2 number(4);
BEGIN
    var2 :=
    CASE
        WHEN var1 > 10 THEN
            var1 + 10
        WHEN var1 BETWEEN 7 and 9 THEN
            var1 * 2
    ELSE
        var1 * var1
    END;

    dbms_output.put_line('O valor de var2 é: ' || var2);
END;