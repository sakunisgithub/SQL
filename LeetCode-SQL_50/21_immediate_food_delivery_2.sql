WITH first_order_type AS
(
    SELECT customer_id,
        (CASE
            WHEN MIN(order_date) = MIN(customer_pref_delivery_date) # leveraging the fact that there is exactly one first order
                THEN "immediate"
            ELSE
                "schedule"
        END) AS order_type
    FROM Delivery
    GROUP BY customer_id
)
SELECT ROUND((SUM(CASE 
                    WHEN order_type = "immediate" 
                        THEN 1 
                    ELSE 0 
                    END) / COUNT(1)) * 100, 2) AS immediate_percentage
FROM first_order_type;