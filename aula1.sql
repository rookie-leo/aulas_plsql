DECLARE
    valor_novo number(6,2);
    valor_atual number(6,2);
    porcentagem number(6,2) := 8/100;
    calculo number(6,2);
BEGIN
    valor_novo := valor_atual * porcentagem;
    DBMS_OUTPUT.PUT_LINE(valor_novo);
END;