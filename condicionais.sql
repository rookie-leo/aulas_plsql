set serveroutput on size 2000;
/*DECLARE
    var1 number(4) := &var1;
    var2 number(4);
BEGIN
    IF var1 > 10 THEN
        var2 := var1 + 20;
    ELSIF var1 BETWEEN 7 and 9 THEN
        var2 := var1 * 2;
        ELSE
            var2 := var1 * var2;
        END IF;
    END IF;
    dbms_output.put_line('O valor de var2 é: ' || var2);
END;*/

DECLARE
    v_ra ALUNO.RA%TYPE := 1;
    v_nota ALUNO.NOTA%TYPE;
    v_conceito VARCHAR2(12);
BEGIN
    SELECT nota INTO v_nota FROM aluno WHERE ra = v_ra;
    IF v_nota <= 5 THEN
        v_conceito := 'REGULAR';
    ELSIF v_nota < 7 THEN
        v_conceito := 'BOM';
    ELSE
        v_conceito := "EXCELENTE";
    END IF;

    DBMS_OUTPUT.PUT_LINE ('Conceito: ' || V_CONCEITO);
END;