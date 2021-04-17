CREATE TABLE customer(
    customer_id int PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    gender VARCHAR(1) NOT NULL, 
    primary_address int, 
    primary_phone int, 
    primary_email int, 
    primary payment int
);

ALTER TABLE customer
ADD FOREIGN KEY(primary_phone)
REFERENCES phone(phone_id)
ON DELETE CASCADE;

ALTER TABLE customer
ADD FOREIGN KEY (primary_email) REFERENCES email(email_Id) ON DELETE CASCADE;

ALTER TABLE customer
ADD FOREIGN KEY(primary_payment)
REFERENCES payment(payment_id)
ON DELETE CASCADE;

ALTER TABLE customer
ADD FOREIGN KEY(primary_address)
REFERENCES address(address_id)
ON DELETE CASCADE;


CREATE TABLE phone (
             phone_Id int PRIMARY KEY,
             customer_Id int NOT NULL, 
             country_code int NOT NULL, 
             phone_number int NOT NULL,
             extention int, 
             phone_type varchar(8)NOT NULL, 
             primary_phone BOOLEAN NOT NULL DEFAULT FALSE, 
             FOREIGN KEY(customer_Id) REFERENCES customer (customer_Id) ON DELETE CASCADE                

);

CREATE TABLE payment(
             payment_Id int PRIMARY KEY, 
             customer_Id int NOT NULL, 
             cc_number VARCHAR(16) NOT NULL, 
             cc_type varchar(20)NOT NULL, 
             cc_exp_month int NOT NULL, 
             cc_exp_year int NOT NULL, 
             cc_sec_code int NOT NULL,
             primary_payment BOOLEAN NOT NULL DEFAULT FALSE, 
             FOREIGN KEY(customer_Id) references customer (customer_Id) ON DELETE CASCADE            
);

CREATE TABLE address(
            address_Id int PRIMARY KEY, 
            customer_Id int NOT NULL,
            address varchar(100) NOT NULL, 
            street varchar(30) NOT NULL,
            street_number int (3) NOT NULL, 
            district int(4)NOT NULL, 
            city varchar (30)NOT NULL,
            country varchar(70)NOT NULL,
            address_type varchar(8) NOT NULL
            
);

CREATE TABLE order_details(
             customer_Id int NOT NULL, 
             cart_Id int,
             payment_Id int NOT NULL, 
             payment_date TIMESTAMP,
             order_date TIMESTAMP, 
             ship_date TIMESTAMP, 
             ship_method varchar(30),
             fullfillment_date TIMESTAMP, 
             cancellation_date TIMESTAMP,
             return_date TIMESTAMP,
    FOREIGN KEY(customer_Id) REFERENCES customer(customer_Id) ON DELETE CASCADE, 
    FOREIGN KEY(payment_Id) REFERENCES payment(payment_Id) ON DELETE CASCADE  
             
);
  
ALTER TABLE order_details
ADD FOREIGN KEY(cart_id)
REFERENCES cart(cart_id)
ON DELETE CASCADE;


CREATE TABLE item_catalog(
             item_Id int PRIMARY KEY, 
             item_name varchar(50) NOT NULL, 
             vendor_Id int NOT NULL, 
             manufacturer_Id varchar(10) NOT NULL, 
             color_Id int, 
             size_Id int, 
             unit_Id int, 
             price_per_unit int, 
             weight_per_unit int
);

CREATE TABLE cart(
             cart_Id int PRIMARY KEY, 
             order_Id int NOT NULL, 
             item_Id int,
             quantity int NOT NULL,
             discount int, 
             FOREIGN KEY (order_Id) REFERENCES order_details(order_Id) ON DELETE CASCADE
             
);

ALTER TABLE cart
ADD FOREIGN KEY(product_Id)
REFERENCES item_catalog(item_Id)
ON DELETE CASCADE;


