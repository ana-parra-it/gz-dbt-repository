with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(shipping_fee as FLOAT64) as shipping_fee,
        CAST(logcost AS FLOAT64) as logcost,
        CAST(ship_cost AS FLOAT64) as ship_cost

    from source

)

select * from renamed
