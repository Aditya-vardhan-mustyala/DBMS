select count(*) from film where special_features like "%Deleted Scenes%" and film_id in 
(select film_id 
from film_category join category on category.category_id=film_category.category_id
where name="Documentary");

select count(distinct FID) from 
film_list join inventory on film_list.FID=inventory.film_id 
join rental on rental.inventory_id=inventory.inventory_id 
where category="Sci-fi" and store_id = (
							select store_id from staff where first_name="Jon" and last_name="Stephens");
                            
select count(rental_id) from 
film_list join inventory on film_list.FID=inventory.film_id 
join rental on rental.inventory_id=inventory.inventory_id 
where category="Animation";


select sum(amount) 
from film_category join category on film_category.category_id=category.category_id
join film on film_category.film_id =film.film_id
join inventory on inventory.film_id=film.film_id
join rental on rental.inventory_id=inventory.inventory_id
join payment on payment.rental_id=rental.rental_id
where category.name="Animation";

select category, count(*) from 
film_list join inventory on film_list.FID=inventory.film_id 
join rental on rental.inventory_id=inventory.inventory_id 
join customer_list on customer_list.ID=rental.customer_id
where name="PATRICIA JOHNSON" group by category order by count(*) desc limit 3;

select count(FID) from 
film_list join inventory on film_list.FID=inventory.film_id 
join rental on rental.inventory_id=inventory.inventory_id 
join customer_list on customer_list.ID=rental.customer_id
where name="SUSAN WILSON" and rating="R" ;
