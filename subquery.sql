select avg(average.sum_of_paid_amount) as avg_of_best_customers_payment

from

       (SELECT

       A.customer_id,

       A.first_name,

       A.last_name,

       D.country,

       C.city,

       sum(E.amount) AS Sum_of_paid_amount

FROM customer A

LEFT JOIN address B ON A.address_id = B.address_id

LEFT JOIN city C ON B.city_id = C.city_id

LEFT JOIN country D ON C.country_id = D.country_id

LEFT JOIN payment E ON A.customer_id = E.customer_id

where D.country = 'India' or

D.country = 'China' or

D.country = 'United States' or

D.country = 'Japan' or

D.country = 'Mexico' or

D.country = 'Brazil' or

D.country = 'Russian Federation' or

D.country = 'Philippines' or

D.country = 'Turkey' or

D.country = 'Indonesia'

        group by A.first_name,

        A.last_name,

        A.customer_id,

        D.country,

        C.city

        order by sum(E.amount) desc

        limit 5) as average