category
-
category_id varchar PK
category varchar

subcategory
-
subcategory_id varchar PK
subcategory varchar

campaign
-
cf_id integer PK
contact_id integer FK - contacts.contact_id
comapny_name varchar
description varchar
goal integer
pledged integer
outcome varchar
backers_count integer
country varchar
currency varchar
launched_date date
end_date date
category_id varchar FK - category.category_id
subcategory_id varchar FK - subcategory.subcategory_id


contacts
-
contact_id integer PK
first_name varchar
last_name varchar
email varchar