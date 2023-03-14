set serveroutput on size 2000;
DECLARE
    valor_novo number(6,2);
    valor_atual number(6,2);
    porcentagem number(6,2) := 1.08;
    calculo number(6,2);
BEGIN
    valor_atual := 1302;
    valor_novo := valor_atual * porcentagem;
    dbms_output.put_line(valor_novo);
END;