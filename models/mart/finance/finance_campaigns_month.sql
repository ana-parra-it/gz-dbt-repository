SELECT 
 DATE_TRUNC(date_date,MONTH) AS date_month, 
 SUM(ads_margin) AS total_ads_margin,
 ROUND(SUM(average_basket),2) AS avg_basket,
 SUM(operational_margin) AS total_operational_margin,
 SUM(ads_cost) AS total_ads_cost,
 SUM(ads_impression) AS total_ads_impression,
 SUM(ads_clicks) AS total_ads_clicks,
 SUM(quantity) AS total_quantity,
 SUM(revenue) AS total_revenue,
 SUM(purchase_cost) AS total_purchase_cost,
 SUM(margin) AS total_margin,
 SUM(shipping_fee) AS total_shipping_fee,
 SUM(logcost) AS total_logcost,
 SUM(ship_cost) AS total_ship_cost 
FROM {{ ref('finance_campaigns_day') }} 
GROUP BY date_month
ORDER BY date_month DESC





