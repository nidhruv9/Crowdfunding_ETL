
CREATE TABLE category(
	category_id VARCHAR(10) NOT NULL,
	category_name VARCHAR (50) NOT NULL,	
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory_name VARCHAR (50) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,  
	email VARCHAR(100) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign(
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_at DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	
	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;