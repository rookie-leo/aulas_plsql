--set serveroutput on size 2000;
CREATE TABLE ALUNO_TI 
( RA NUMBER(9) PRIMARY KEY,  NOME VARCHAR(50) NOT NULL, 
  DISCIPLINA VARCHAR(30),  MEDIA NUMBER(3,1),  CARGA_HORA NUMBER(2), 
  FALTAS NUMBER(2), RESULTADO VARCHAR(10)
);

INSERT INTO ALUNO_TI VALUES (100, 'Luis', 'Modelagem Dados',7.5,80,14,null);
INSERT INTO ALUNO_TI VALUES (200, 'Carla', 'Modelagem Dados',4.5,80,16,null);
INSERT INTO ALUNO_TI VALUES (300, 'Pedro', 'Modelagem Dados',6.0,80,24,null);

DECLARE
    v_ra ALUNO_TI.RA%TYPE := &NRA;
    v_media ALUNO_TI.MEDIA%TYPE;
BEGIN
    SELECT MEDIA
END;