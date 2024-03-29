CREATE TABLE contacts (
    contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(60) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(30) NOT NULL PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE campaign (
    cf_id INTEGER NOT NULL PRIMARY KEY,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(60) NOT NULL,
    description VARCHAR(255) NOT NULL,
	goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
	outcome VARCHAR(30) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(30) NOT NULL,
    subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);