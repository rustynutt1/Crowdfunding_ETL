
CREATE TABLE contacts (
	contact_id int NOT NULL, 
	first_name varchar(50) NOT NULL, 
	last_name varchar(50) NOT NULL, 
	email varchar(100) NOT NULL, 
	Primary Key (contact_id)
	)
;
	
CREATE TABLE category (
    category_id varchar(10) NOT NULL,
    category varchar(50) NOT NULL,
	Primary Key (category_id)
	)
;
	
CREATE TABLE subcategory( 
	subcategory_id varchar(10) NOT NULL, 
	subcategory varchar(50) NOT NULL, 
	Primary Key (subcategory_id)
	)
;

CREATE TABLE campaigns (
	cf_id int NOT NULL,
	contact_id int NOT NULL, 
	company_name varchar(100) NOT NULL, 
	description text NOT NULL, 
	goal float NOT NULL, 
	pledged float NOT NULL, 
	outcome varchar(50) NOT NULL, 
	backers_count int NOT NULL, 
	country varchar(10) NOT NULL, 
	currency varchar(10) NOT NULL, 
	launch_date date NOT NULL, 
	end_date date NOT NULL,
    category_id varchar(10) NOT NULL,
    subcategory_id varchar(10) NOT NULL,
	Primary Key (cf_id), 
	Foreign Key (contact_id) References contacts(contact_id), 
	Foreign Key (category_id) References category(category_id), 
	Foreign Key (subcategory_id) References subcategory(subcategory_id)
	)
;

