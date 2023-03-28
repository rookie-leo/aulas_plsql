--set serveroutput on size 2000;
DECLARE
     V_NFORN FORNECEDOR.N_FORNEC%TYPE	:= &CODIGO ;
     V_NOME FORNECEDOR.NOME%TYPE ;
     V_VENDA FORNECEDOR.VENDA%TYPE ;
     V_COM FORNECEDOR.COMISSAO%TYPE ;
BEGIN
     SELECT N_FORNEC, NOME,	VENDA, COMISSAO
     INTO	V_NFORN,	V_NOME,	V_VENDA,	V_COM
     FROM	FORNECEDOR
     WHERE	N_FORNEC = V_NFORN ;
     IF V_VENDA > 6000 THEN
        V_COM := V_VENDA * 0.15 ; 
     ELSE
        V_COM := V_VENDA * 0.05 ;
     END IF ;	
     UPDATE FORNECEDOR SET COMISSAO = COMISSAO + V_COM
        WHERE N_FORNEC = V_NFORN ;
        
     DBMS_OUTPUT.PUT_LINE('C�DIGO FORNECEDOR: ' || V_NFORN || ' - ' || V_NOME || ' - VALOR COMISS�O: ' || V_COM);
EXCEPTION
     WHEN NO_DATA_FOUND	THEN
     DBMS_OUTPUT.PUT_LINE('FORNECEDOR N�O CADASTRADO!')	;
END;
