SELECT date_date
,CAST((operational_margin-ads_cost) AS INT64) as ads_margin
,average_basket
,operational_margin
,ads_cost
,ads_impression
,ads_clicks
,quantity
,revenue
,purchase_cost
,margin
,shipping_fee
,logcost
,ship_cost
FROM
{{ ref('int_campaigns_day') }} as s
JOIN {{ ref('finance_days') }} as p
USING (date_date) 
ORDER by date_date DESC