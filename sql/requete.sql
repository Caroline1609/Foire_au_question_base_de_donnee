/* Sélectionner tous les utilisateurs (identifiant, nom, prénom, email). */

SELECT id_user, user_lastname, user_firstname, user_email
FROM User_;


/*Sélectionner toutes les questions (date, intitulé, réponse, identifiant utilisateur) triées par date de la plus ancienne à la plus récente.*/

SELECT question_date, question_label, question_response, id_user
FROM Question
ORDER BY question_date ASC;


/*Sélectionner les questions (identifiant, date, intitulé, réponse) de l’utilisateur n°2.*/

SELECT question_id, question_date, question_label, question_response
FROM Question
WHERE id_user = 2;

/*Sélectionner les questions (date, intitulé, réponse, identifiant utilisateur) de l’utilisateur Eva Satiti.*/

SELECT question_id, question_date, question_label, question_response
FROM Question
INNER JOIN User_ ON Question.id_user = User_.id_user
WHERE User_.user_lastname = 'Satiti' AND User_.user_firstname = 'Eva';


/*Sélectionner les questions (identifiant, date, intitulé, réponse, identifiant utilisateur) dont l’intitulé contient “SQL”. Le résultat est trié par le titre et par ordre décroissant.*/

SELECT question_id, question_date, question_label, question_response, id_user
FROM Question
WHERE question_label LIKE '%SQL%'
ORDER BY question_label DESC;


/*Sélectionner les catégories (nom, description) sans question associée.*/

SELECT category_nom, category_description
FROM Category
INNER JOIN Contient ON Category.category_name = Contient.category_name

/*Sélectionner les questions triées par titre (ordre alphabétique) avec le nom et prénom de l’auteur (nécessite une jointure).*/

/*Sélectionner les catégories (nom) avec, pour chaque catégorie le nombre de questions associées (nécessite une jointure).*/