
CREATE PROCEDURE incluir_segmercado
(p_ID IN NUMBER, p_DESCRICAO IN VARCHAR2)
IS
BEGIN
 INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, upper(p_DESCRICAO));
 COMMIT;
END;

DECLARE

BEGIN
   INCLUIR_SEGMERCADO(3, 'Farmaceuticos');

END;


SELECT * FROM SEGMERCADO ORDER BY ID;

BEGIN
   INCLUIR_SEGMERCADO(4, 'Industrial');
END;