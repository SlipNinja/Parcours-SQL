-- Liste les velo disponibles
SELECT id, marque, type, disponibilite FROM velo WHERE disponibilite = 1;

-- Liste les locations faites par le client avec l'id 1
SELECT * FROM location WHERE id_client = 1;

-- Liste le nombre total de location par velo
SELECT id_velo, COUNT(*) AS nombre_location FROM location GROUP BY id_velo;

-- Calculer les revenus totaux
SELECT SUM(montant_total) FROM location;

-- Afficher le revenu total par mois
SELECT MONTH(date_debut) AS mois, SUM(montant_total) AS total_mois FROM location GROUP BY mois ORDER BY mois ASC;