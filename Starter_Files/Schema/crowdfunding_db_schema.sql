-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/g8TxJ2
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    email varchar(50)   NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE category (
    category_id varchar(50)   NOT NULL,
    category varchar(50)   NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id varchar(50)   NOT NULL,
    subcategory varchar(50)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL, FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name varchar(50)   NOT NULL,
    description varchar(60)   NOT NULL,
    goal int   NOT NULL,
    pledged int   NOT NULL,
    outcome varchar(50)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(50)   NOT NULL,
    currency varchar(50)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(50)   NOT NULL, FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id varchar(50)   NOT NULL, FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    PRIMARY KEY (cf_id)
);

--In Campaign CSV, edit date format for launched_date and end_date to YYYY-MM-DD
-- Import CSVs in order

SELECT * from contacts;

SELECT * from category;

SELECT * from subcategory;

SELECT * from campaign;



