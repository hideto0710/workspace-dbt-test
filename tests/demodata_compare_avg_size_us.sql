with validation as (
    select
        avg(size) as avg_size,
        avg(case when country = 'US' then size end) as avg_size_us
    from demodata
    where {{ var('apply_filter') }}
),

validation_errors as (
    select *
    from validation
    where 
        (avg_size_us - avg_size) not between -10000 and 10000
)

select *
from validation_errors
