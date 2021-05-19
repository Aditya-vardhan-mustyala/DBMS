select * from film where rating="PG-13" and film_id in( select film_id from film_category where category_id in(select category_id from category where name="Comedy"));

select * from
film_list join inventory on film_list.FID=inventory.film_id 
join rental on rental.inventory_id=inventory.inventory_id 
where category="Horror" limit 3;

select * from customer where customer_id in
(select ID from 
film_list join inventory on film_list.FID=inventory.film_id 
join rental on rental.inventory_id=inventory.inventory_id 
join customer_list on customer_list.ID=rental.customer_id
where country="India" and category="Sports");

select * from customer where customer_id in
(select ID from 
film_list join inventory on film_list.FID=inventory.film_id 
join rental on rental.inventory_id=inventory.inventory_id 
join customer_list on customer_list.ID=rental.customer_id
where country="Canada" and actors like "%NICK WAHLBERG%");

select count(film_id) from film_actor where actor_id = (select actor_id from actor where first_name="SEAN" and last_name="WILLIAMS");

