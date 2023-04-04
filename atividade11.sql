--set serveroutput on size 2000;
CREATE TABLE ALUNO_TI (
  RA NUMBER(9) PRIMARY KEY,  NOME VARCHAR(50) NOT NULL, 
  DISCIPLINA VARCHAR(30),  MEDIA NUMBER(3,1),  CARGA_HORA NUMBER(2), 
  FALTAS NUMBER(2), RESULTADO VARCHAR(10)
);

INSERT INTO ALUNO_TI VALUES (100, 'Luis', 'Modelagem Dados',7.5,80,14,null);
INSERT INTO ALUNO_TI VALUES (200, 'Carla', 'Modelagem Dados',4.5,80,16,null);
INSERT INTO ALUNO_TI VALUES (300, 'Pedro', 'Modelagem Dados',6.0,80,24,null);

DECLARE
    v_ra ALUNO_TI.RA%TYPE := &RA;
    v_nome ALUNO_TI.NOME%TYPE;
    v_media ALUNO_TI.MEDIA%TYPE;
    v_cargahr ALUNO_TI.CARGA_HORA%TYPE;
    v_falta ALUNO_TI.FALTAS%TYPE;
    v_result ALUNO_TI.RESULTADO%TYPE;
BEGIN
    SELECT NOME, MEDIA, CARGA_HORA, FALTAS
      INTO v_nome, v_media, v_cargahr, v_falta
      FROM ALUNO_TI
      WHERE RA = v_ra;

    v_cargahr := v_cargahr * 0.25;

    IF v_falta <= v_cargahr THEN
      IF v_media >= 7 THEN
        v_result := 'APROVADO';
      ELSIF v_media < 7 THEN
        v_result := 'EXAME';
      ELSE
        v_result := 'REPROVADO';
      END IF;
    ELSE
      v_result := 'REPROVADO';
    END IF;

    UPDATE ALUNO_TI SET RESULTADO = v_result WHERE RA = v_ra;

    DBMS_OUTPUT.PUT_LINE('RA: ' || v_ra || ' - ' || v_result);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
  dbms_output.put_line('Aluno não cadastrado');
END;