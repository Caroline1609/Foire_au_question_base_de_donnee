DROP DATABASE if EXISTS db_exo_foire_aux_questions; 
  
CREATE DATABASE db_exo_foire_aux_questions;
  
USE db_exo_foire_aux_questions;
  
CREATE TABLE t_user(
	user_id INT(11) AUTO_INCREMENT, 
	user_email VARCHAR(128) NOT NULL,
	user_lastname VARCHAR(50) NOT NULL,
	user_firstname VARCHAR(50) NOT NULL,
	PRIMARY KEY(user_id),
	UNIQUE (user_email)
); 
  
CREATE TABLE question(
	question_id INT(11) AUTO_INCREMENT,	
	question_date DATE NOT NULL,
	question_label VARCHAR(255) NOT NULL, 
	question_reponse TEXT, 
	user_id INT(11) NOT NULL, 
	PRIMARY KEY (question_id),
	FOREIGN KEY(user_id) REFERENCES t_user(user_id)
);
  
CREATE TABLE category(
	category_name VARCHAR(30),
	category_description VARCHAR(255),
	category_order SMALLINT NOT NULL, 
	PRIMARY KEY (category_name),
	UNIQUE (category_order)
);


CREATE TABLE contenir(
	question_id INT(11) ,
	category_name VARCHAR(30),	
	PRIMARY KEY (question_id, category_name),
	FOREIGN KEY (question_id) REFERENCES question(question_id),
	FOREIGN KEY (category_name) REFERENCES category(category_name)
);