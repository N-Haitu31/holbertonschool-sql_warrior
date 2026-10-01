DELIMITER $$

CREATE PROCEDURE ajouter_employe(
    p_nom VARCHAR(50),
    p_prenom VARCHAR(50),
    p_num_permis VARCHAR(12)
)

BEGIN
    DECLARE v_new_id INT;

    SELECT MAX(id) + 1 INTO v_new_id
    FROM employes;

    INSERT INTO employes (id, nom, prenom, num_permis)
    VALUES (v_new_id, UPPER(p_nom), p_prenom, p_num_permis);
END $$

DELIMITER ;