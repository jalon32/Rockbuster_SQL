SELECT 
 
 C.city,
 D.country,
 
 
 count(customer_id) AS number_of_customers
 
 
FROM customer A
LEFT JOIN address B ON A.address_id = B.address_id
LEFT JOIN city C ON B.city_id = C.city_id
LEFT JOIN country D ON C.country_id = D.country_id
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
 
group by C.city,
 D.country
 
 
order by count(customer_id) desc
limit 10;