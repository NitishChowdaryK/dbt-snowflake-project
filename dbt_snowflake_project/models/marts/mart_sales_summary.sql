select
    order_date,
    order_priority,
    count(order_id)    as total_orders,
    sum(total_price)   as total_revenue,
    avg(total_price)   as avg_order_value
from {{ ref('int_orders_filtered') }}
group by order_date, order_priority
order by order_date desc