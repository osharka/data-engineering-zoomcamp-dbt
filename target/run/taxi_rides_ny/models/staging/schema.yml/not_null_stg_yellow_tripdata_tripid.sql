select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `dtc-de-339117`.`dbt_orukosueva`.`stg_yellow_tripdata`
where tripid is null



      
    ) dbt_internal_test