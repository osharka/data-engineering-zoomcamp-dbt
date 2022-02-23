
    
    

with child as (
    select dropoff_locationid as from_field
    from `dtc-de-339117`.`dbt_orukosueva`.`stg_yellow_tripdata`
    where dropoff_locationid is not null
),

parent as (
    select locationid as to_field
    from `dtc-de-339117`.`dbt_orukosueva`.`taxi_zone_lookup`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null

