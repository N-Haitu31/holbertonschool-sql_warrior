DELIMITER $$

CREATE FUNCTION date_fin_contrat(p_id_contrat INT)
RETURNS DATE
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_date_effet DATETIME;
    DECLARE v_duree INT;

    SELECT date_effet, duree INTO v_date_effet, v_duree
    FROM contrats
    WHERE id = p_id_contrat;

    IF v_date_effet IS NULL THEN
        RETURN NULL;
    END IF;

    RETURN DATE_ADD(v_date_effet, INTERVAL v_duree MONTH);
END $$

DELIMITER ;