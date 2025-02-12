SELECT *
FROM
{{ ref('int_campaigns_day') }} as s
JOIN {{ ref('finance_days') }} as p
USING (date_date) 