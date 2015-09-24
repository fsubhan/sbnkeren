create table orgunits(
	id_entity INT(5) PRIMARY KEY,
	id_orgunit VARCHAR(5) NOT NULL,
	str_desc VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);

create table user_types(
	id_entity INT(5) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_orgunit VARCHAR(5) NOT NULL,
	id_user_type  INT(5),
	str_desc VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);

create table user_informations(
	id_user INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	str_mobile_number VARCHAR(10),
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

alter table user_informations
add foreign key (id_orgunit)
references orgunits(id_rate);

alter table user_informations
add foreign key (id_user_type)
references user_types(id_user_type);

	


create table identification_types(
	id_identification_type INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
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

create table credential_types(
	id_credential_type           INT(2),
	str_desc INT(8),
	dat_creation TIMESTAMP, 
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);

create table user_credentials(
	id_entity INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_user INT(8),
	id_crendential_type INT(2),
	str_credential VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
);

create table products(
	id_product INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_user INT(8),
	dat_creation TIMESTAMP, 
	id_creation INT(5),
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(5)
	)


create table product_prices(
	id_product INT(10),
	id_qty INT(10),
	amnt_price_product NUMBER,
	dat_creation TIMESTAMP,
	id_creation INT(8)
	dat_last_updated TIMESTAMP,
	id_creation_last_updated INT(8)
	)
	
create table grobang_order_status(
	id_order_status INT(2),
	str_status VARCHAR(50),
	dat_creation TIMESTAMP,
	id_creation INT(8),
	dat_last_updated TIMESTAMP NULL,
	id_creation_last_updated INT(5) NULL
	);

insert into grobang_order_status(id_order_status, str_status, dat_creation, id_creation) values
(1, 'requestorder', now(), 100),
(2, 'cancel-requestorder', now(), 100), 
(5, 'processingorder', now(), 100),
(7, 'failed-procesingorder', now(), 100),
(10, 'done-receiptorder', now(), 100);

		
create table grobang_orders(
	id_order INT(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_payer INT(8),
	id_product INT(8),
	amnt_amount DECIMAL,
	str_order VARCHAR(20),
	id_order_status INT(2),
	dat_order TIMESTAMP,
	id_payer_lat DECIMAL,
	id_payer_long DECIMAL,
	id_payee INT(8),
	id_payee_lat DECIMAL,
	id_payee_long DECIMAL
	dat_creation TIMESTAMP,
	id_creation INT(8),
	dat_last_updated TIMESTAMP NULL,
	id_creation_last_updated INT(5) NULL
	);
	
create table grobang_order_details(
	id_order INT(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_product INT(8),
	id_product_type INT(8),
	id_qty INT(8),
	amnt_amount DECIMAL,
	str_desc VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(8),
	dat_last_updated TIMESTAMP NULL,
	id_creation_last_updated INT(5) NULL
	);	
	

create table grobang_txns(
	id_txn INT(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_payer INT(8),
	id_peyee INT(8),
	id_order INT(20),
	dat_creation TIMESTAMP,
	id_creation INT(8),
	dat_last_updated TIMESTAMP NULL,
	id_creation_last_updated INT(5) NULL
)

create table rate_satisfaction(
	id_rate INT(5) PRIMARY KEY,
	str_satisfaction VARCHAR(20),
	dat_creation TIMESTAMP,
	id_creation INT(8),
	dat_last_updated TIMESTAMP NULL,
	id_creation_last_updated INT(5) NULL
	);

	insert into rate_satisfaction(id_rate, str_satisfaction, dat_creation, id_creation) values(5,'Excellent', now(), 100);
	insert into rate_satisfaction(id_rate, str_satisfaction, dat_creation, id_creation) values(4,'Very Good', now(), 100);
	insert into rate_satisfaction(id_rate, str_satisfaction, dat_creation, id_creation) values(3,'Good', now(), 100);
	insert into rate_satisfaction(id_rate, str_satisfaction, dat_creation, id_creation) values(2,'Fair', now(), 100);
	insert into rate_satisfaction(id_rate, str_satisfaction, dat_creation, id_creation) values(1,'Poor', now(), 100);

create table customer_satisfaction(
	id_entity INT(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_order INT(20) NOT NULL,
	id_producer INT(8),
	id_consumer INT(8),
	id_rate INT(5),
	str_testimony VARCHAR(50),
	dat_creation TIMESTAMP,
	id_creation INT(8),
	dat_last_updated TIMESTAMP NULL,
	id_creation_last_updated INT(5) NULL
	);
	
alter table customer_satisfaction
add foreign key (id_rate)
references rate_satisfaction(id_rate);	
	
