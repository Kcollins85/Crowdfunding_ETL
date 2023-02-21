
-- Create Campaign Table
CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(20)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "currency" VARCHAR(100)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_ID" VARCHAR   NOT NULL,
    "sub_category_ID" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

-- Create Category Table
CREATE TABLE "Category" (
    "category_ID" VARCHAR(10)   NOT NULL,
    "category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_ID"
     )
);

-- Create Contacts Table
CREATE TABLE "Contacts" (
    "contact_ID" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_ID"
     )
);

-- Create Sub_Category Table
CREATE TABLE "Sub_Category" (
    "sub_category_ID" VARCHAR(10)   NOT NULL,
    "sub_category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Sub_Category" PRIMARY KEY (
        "sub_category_ID"
     )
);

-- Alter tables to allocate primary key reference
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_ID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_ID" FOREIGN KEY("category_ID")
REFERENCES "Category" ("category_ID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_sub_category_ID" FOREIGN KEY("sub_category_ID")
REFERENCES "Sub_Category" ("sub_category_ID");

-- Check tables have been created with correct headers
SELECT * FROM "Category"
SELECT * FROM "Sub_Category"
SELECT * FROM "Contacts"
SELECT * FROM "Campaign"

-- Import CSV's in below order:
	-- Category
	-- Sub_Category
	-- Contact
	-- Campaign

-- Check CSV's have been imported OK
SELECT * FROM "Category"
SELECT * FROM "Sub_Category"
SELECT * FROM "Contacts"
SELECT * FROM "Campaign"

