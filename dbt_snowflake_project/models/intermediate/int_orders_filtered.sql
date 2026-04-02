select
    order_id,
    customer_id,
    order_status,
    total_price,
    order_date,
    order_priority
from {{ ref('stg_orders') }}
where order_status = 'F'   -- only fulfilled orders
  and total_price > 1000   -- only meaningful order values