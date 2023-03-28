set serveroutput on size 2000;
DECLARE
 V_NFORN FORNECEDOR.N_FORNEC%TYPE := &CODIGO_FORNECEDOR	;
 V_NOME FORNECEDOR.NOME%TYPE ;
 V_END FORNECEDOR.ENDERECO%TYPE ;
 V_VENDA FORNECEDOR.VENDA%TYPE ;
BEGIN
 SELECT	N_FORNEC, NOME, ENDERECO, VENDA
 INTO	V_NFORN, V_NOME,	V_END, V_VENDA	
 FROM	FORNECEDOR 
 WHERE	N_FORNEC = V_NFORN ;
 DBMS_OUTPUT.PUT_LINE('CODIGO FORNECEDOR: ' || V_NFORN || ' - ' || V_NOME)	;
 DBMS_OUTPUT.PUT_LINE('ENDERE�O: ' || V_END) ;
 DBMS_OUTPUT.PUT_LINE('VALOR DA VENDAS: ' || V_VENDA) ;

END;