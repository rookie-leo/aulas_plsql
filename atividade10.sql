--set serveroutput on size 2000;
DECLARE
    v_conta CONTA.n_conta%TYPE;
    v_mens A_FAZER.observ%TYPE;
BEGIN
    SELECT n_conta INTO v_conta FROM CONTA WHERE saldo < 10000;
    v_mens := 'Mensagem para conta nº ' || v_conta || ' - saldo baixo';

    INSERT 
        INTO A_FAZER (FEITO, DATA, observ) 
        VALUES ('N', SYSDATE, v_mens);
        
    DBMS_OUTPUT.PUT_LINE('Registro inserido com sucesso!!!');
    DBMS_OUTPUT.PUT_LINE(v_mens);
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Registro não encontrado!');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Muitos registros encontrados!');

END;