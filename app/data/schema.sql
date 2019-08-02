DROP DATABASE IF EXISTS friend_finder;   

CREATE DATABASE friend_finder;
USE friend_finder;

-- Created the table "friends" 
CREATE TABLE friends
(
  id int AUTO_INCREMENT NOT NULL,
  name varchar (30) NOT NULL,
  photo varchar(150) NOT NULL,
  q1 int NOT NULL,
  q2 int NOT NULL,
  q3 int NOT NULL,
  q4 int NOT NULL,
  q5 int NOT NULL,
  q6 int NOT NULL,
  q7 int NOT NULL,
  q8 int NOT NULL,
  q9 int NOT NULL,
  q10 int NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users
(
  id int AUTO_INCREMENT NOT NULL,
  name varchar (30) NOT NULL,
  q1 int NOT NULL,
  q2 int NOT NULL,
  q3 int NOT NULL,
  q4 int NOT NULL,
  q5 int NOT NULL,
  q6 int NOT NULL,
  q7 int NOT NULL,
  q8 int NOT NULL,
  q9 int NOT NULL,
  q10 int NOT NULL,
  PRIMARY KEY (id)
);

  -- Inserted a set of records into the table
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Basset Hound", "../../public/assets/Basset-Hound.jpg",0,0,0,0,2,0,0,0,3,1);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("French Bulldog", "../../public/assets/French-Bulldog.jpg",3,0,3,1,3,0,0,0,3,0);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Pomeranian", "../../public/assets/Pomeranian.jpg",3,0,3,1,3,0,0,0,3,3);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Anatolian Shepherd", "../../public/assets/Anatolian-Shepherd.jpg",0,3,1,3,3,3,3,0,3,1);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Black Russian Terrier", "../../public/assets/Black-Russian-Terrier.jpg",0,3,1,3,3,3,3,0,3,4);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Collie", "../../public/assets/Collie.jpg",3,3,3,3,3,3,3,3,3,4);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Finnish Spitz", "../../public/assets/Finnish-Spitz.jpg",3,3,3,3,3,3,3,3,3,1);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Petit Basset Griffon Vendeen", "../../public/assets/Petit-Basset-Griffon-Vendeen.jpg",3,3,5,5,4,1,1,3,3,2);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Affenpinscher", "../../public/assets/Affenpinscher.jpg",3,3,5,5,4,1,1,3,5,3);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Airedale Terrier", "../../public/assets/Airedale-Terrier.jpg",5,0,3,3,3,3,5,3,3,1);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Irish Water Spaniel", "../../public/assets/Irish-Water-Spaniel.jpg",5,0,3,3,3,3,5,3,5,4);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("English Setter", "../../public/assets/English-Setter.jpg",3,4,3,5,3,3,0,1,3,3);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Australian Shepherd", "../../public/assets/Australian-Shepherd.jpg",5,5,5,5,5,5,5,5,3,3);
  
  INSERT INTO friends (name, photo, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)
  VALUES ("Polish Lowland Sheepdog", "../../public/assets/Polish-Lowland-Sheepdog.jpg",5,5,5,5,5,5,5,5,3,5);
