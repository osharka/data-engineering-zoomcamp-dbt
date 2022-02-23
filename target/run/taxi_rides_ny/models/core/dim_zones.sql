

  create or replace table `dtc-de-339117`.`dbt_orukosueva`.`dim_zones`
  
  
  OPTIONS()
  as (
    


select 
    locationid, 
    borough, 
    zone, 
    replace(service_zone,'Boro','Green') as service_zone
from `dtc-de-339117`.`dbt_orukosueva`.`taxi_zone_lookup`
  );
  