set serveroutput on size 2000;
DECLARE
    NUM_FORNEC	NUMBER(5) := &NUM_FORNEC;
    NOME	VARCHAR2(15) := '&NOME';
    ENDERECO	VARCHAR2(30) := '&ENDERECO';
    CPF	VARCHAR2(14) := '&CPF';
    ESTRELA	NUMBER(1) := &ESTRELA;
    VENDA	NUMBER(11,2) := &VENDA;
    COMISSAO	NUMBER(11,2) := &COMISSAO;
BEGIN
    insert into fornecedor (n_fornec, nome, endereco, cpf, estrela, dt_atualiza, venda, comissao)
    values (NUM_FORNEC, NOME, ENDERECO, CPF, ESTRELA, SYSDATE, VENDA, COMISSAO);
    dbms_output.put_line('Registro inserido com sucesso');
END;

