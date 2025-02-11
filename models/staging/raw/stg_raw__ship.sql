with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(shipping_fee as FLOAT64) as shipping_fee,
        logcost,
        ship_cost

    from source
    #WHERE shipping_fee <> shipping_fee_1

)

select * from renamed
