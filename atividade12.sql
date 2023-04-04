--set serveroutput on size 2000;
DECLARE
    v_codfornec FORNECEDOR.N_FORNEC%TYPE := &cod;
    v_nome FORNECEDOR.NOME%TYPE;
BEGIN
    SELECT NOME INTO v_nome FROM FORNECEDOR where N_FORNEC = v_codfornec;
    dbms_output.put_line('Codigo: ' || v_codfornec || 'Fornecedor: ' || v_nome);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Código não encontrado');

END;