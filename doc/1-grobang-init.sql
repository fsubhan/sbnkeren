CREATE TABLE MyGuests (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50),
reg_date TIMESTAMP
)

create table orgUnits(
	id_entity INT(5) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_orgunit VARCHAR(5) NOT NULL,
	str_desc VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);

create table user_types(
	id_user_type INT(5) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_orgunit VARCHAR(5) NOT NULL,
	str_user_type  VARCHAR(10),
	str_desc VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);


create table user_informations(
	id_user INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_orgunit VARCHAR(5) NOT NULL,
	id_user_type INT(5),
	str_first_name VARCHAR(10),
	str_middle_name VARCHAR(10),
	str_last_name VARCHAR(10),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);

create table identification_types(
	id_identification_type INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_orgunit VARCHAR(5) NOT NULL,
	str_description VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);

create table user_identifications(
	id_orgunit VARCHAR(5) NOT NULL,
	id_user INT(8),
	id_identification_type INT(2),
	str_identification VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);
