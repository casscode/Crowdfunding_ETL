CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" numeric   NOT NULL,
    "pledged" numeric   NOT NULL,
    "outcome" varchar(100)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "currency" varchar(100)   NOT NULL,
    "lauched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(100)   NOT NULL,
    "subcategory_id" varchar(100)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "contact_id","category_id","subcategory_id"
     )
);

CREATE TABLE "Category" (
    "category_id" VARCHAR(100)   NOT NULL,
    "category" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(100)   NOT NULL,
    "subcategory" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);


CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

SELECT * from "Campaign"
SELECT * from "Category"
SELECT * from "Contacts"
SELECT * from "Subcategory"