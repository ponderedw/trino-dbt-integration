select * from mariadb.db.customers;

select * from postgres.dev_test.maria_db_ingestion_customers;

describe postgres.dev_test.maria_db_ingestion_customers;

create table "postgres"."dev_test_data_ingestion"."ingestion_customers"  
      
    as (
      select  customer_id,
        first_name,
        last_name,
        email,
        phone_number,
        join_date, 
        1/4 as "b"
from "mariadb"."db"."customers"
    );
