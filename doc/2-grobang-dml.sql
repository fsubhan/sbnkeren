--orgUnit
insert into orgUnits (id_orgunit,str_desc, dat_creation, id_creation) values (1,'Aplikasi Grobang', now(), 100);
insert into orgUnits (id_orgunit,str_desc, dat_creation, id_creation) values (2,'Aplikasi Gojek', now(), 100);
--user_types
insert into user_types (id_orgunit str_user_type, str_desc, dat_creation, id_creation) values (1, 100, 'Producer', now(), 100);
insert into user_types (id_orgunit str_user_type, str_desc, dat_creation, id_creation) values (1, 200, 'Consumer', now(), 100);
--user_information
insert into user_informations (str_mobile_number, id_orgUnit, id_user_type, str_fist_name, dat_creation, id_creation) 
values ('082113538519', 1, 200, 'Febrie Subhan', now(), 100);
insert into user_informations (str_mobile_number, id_orgUnit, id_user_type, str_fist_name, dat_creation, id_creation) 
values ('083113538519', 1, 100, 'Dewi Ramdhania', now(), 100);

--identification_types
insert into identification_types (id_identification_type, str_description, dat_creation,id_creation) values (0, 'Mobile Number', now(), 100);
insert into identification_types (id_identification_type, str_description, dat_creation,id_creation) values (1, 'Credit Card', now(), 100);

--user_identifications
insert into user_identifications (id_orgunit, id_user, id_identification_type, str_identification, dat_creation, id_creation)  values (1,111,0,'082113538519', now(), 100);


insert into user_credentials (str





	 
