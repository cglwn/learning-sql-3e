Run a MySQL container with the Sakila dataset pre-loaded.
```
docker build -t sakila-mysql .
docker run -dp 3306:3306 --name sakila-instance  -e MYSQL_ROOT_PASSWORD=root sakila-mysql
docker exec -it -e MYSQL_PWD=root sakila-instance mysql -u root sakila
```

Run a SQL file
```
docker exec -i -e MYSQL_PWD=root sakila-instance mysql -u root sakila < 03/02_categories.sql

# Table format
docker exec -i -e MYSQL_PWD=root sakila-instance mysql -u root sakila -t -v < 03/02_categories.sql
```

# Tables
actor
actor_info
address
category
city
country
customer
customer_list
film
film_actor
film_category
film_list
film_text
inventory
language
nicer_but_slower_film_list
payment
rental
sales_by_film_category
sales_by_store
staff
staff_list
store
