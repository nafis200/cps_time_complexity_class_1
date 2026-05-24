


CREATE TABLE Orders (
    order_number INT,
    customer_number INT
);

INSERT INTO Orders (order_number, customer_number) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);

select customer_number from orders group by customer_number ORDER BY count(customer_number) DESC LIMIT 1


SELECT COUNT(*) as cnt FROM Orders GROUP BY customer_number

SELECT MAX(cnt) from (
    SELECT COUNT(*) as cnt FROM Orders GROUP BY customer_number
)

select customer_number from orders GROUP BY customer_number HAVING count(*) = (SELECT MAX(cnt) from (
    SELECT COUNT(*) as cnt FROM Orders GROUP BY customer_number
))