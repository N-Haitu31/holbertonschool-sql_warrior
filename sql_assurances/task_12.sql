DELIMITER $$

CREATE TRIGGER trg_verifier_places
BEFORE INSERT ON deplacements
FOR EACH ROW
BEGIN
    DECLARE v_nbplaces INT;
    DECLARE v_nombre INT;

    -- Trouver la capacité du véhicule concerné
    SELECT tv.nbplaces INTO v_nbplaces 
    FROM vehicules v
    JOIN types_vehicules tv ON v.type_voiture = tv.id
    WHERE v.id = NEW.vehicule;

    -- Compter combien de personnes sont déjà sur ce même trajet
    SELECT COUNT(*) INTO v_nombre
    FROM deplacements
    WHERE vehicule = NEW.vehicule AND debut_dep = NEW.debut_dep;

    -- bloquer une action
    IF v_nombre >= v_nbplaces THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Capacite du vehicule depassee';
    END IF;

END $$
DELIMITER ;