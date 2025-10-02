CREATE DATABASE IF NOT EXISTS foire_question;


USE db_mini_faq;

CREATE TABLE User_(
   id_user INT AUTO_INCREMENT,
   user_lastname VARCHAR(50),
   user_firstname VARCHAR(50),
   user_email VARCHAR(320),
   PRIMARY KEY(id_user),
   UNIQUE(user_email)
);

CREATE TABLE Question(
   question_id INT AUTO_INCREMENT,
   question_date DATE,
   question_label VARCHAR(255),
   question_response TEXT,
   id_user INT NOT NULL,
   PRIMARY KEY(question_id),
   FOREIGN KEY(id_user) REFERENCES User_(id_user)
);

CREATE TABLE Category(
   category_name VARCHAR(30),
   category_description VARCHAR(255),
   category_order INT,
   PRIMARY KEY(category_name),
   UNIQUE(category_order)
);

CREATE TABLE Contient(
   question_id INT,
   category_name VARCHAR(30),
   PRIMARY KEY(question_id, category_name),
   FOREIGN KEY(question_id) REFERENCES Question(question_id),
   FOREIGN KEY(category_name) REFERENCES Category(category_name)
);
