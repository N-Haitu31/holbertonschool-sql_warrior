DELIMITER $$

CREATE FUNCTION vehicule_est_assure(p_id_vehicule INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_nombre INT;

    SELECT COUNT(*) INTO v_nombre
    FROM contrats
    WHERE vehicule = p_id_vehicule
        AND CURDATE() BETWEEN date_effet AND DATE_ADD(date_effet, INTERVAL duree MONTH);

    IF v_nombre > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;

END $$

DELIMITER ;