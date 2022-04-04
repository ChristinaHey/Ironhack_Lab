-- Lab | SQL basics (selection and aggregation)
-- 1.
select client_id from client
where district_id =1 
Limit 5

-- 2.
select client_id from client 
where district_id =72
order by client_id DESC

-- 3. 
select amount from loan
order by amount 
limit 3

-- 4.
select distinct status from loan
order by status

-- 5. 
select loan_id, max(payments)from loan
group by loan_id
order by max(payments) DESC

-- 6. 
select amount, min(account_id) from loan
group by amount
order by min(account_id)

-- 7. 
select account_id, duration, amount from loan
where duration in (60)
order by amount 
limit 5

-- 8. 
select distinct k_symbol from `order`

-- 9. 
select order_id from `order`
where account_id in (34)

-- 10.
select distinct account_id from `order`
where (order_id >= 29540 AND order_id<=29560)

-- 11. 
select amount, account_to from `order`
where account_to IN (30067122)

-- 12. 
select trans_id, `date`, `type`, amount, account_id from trans
where account_id In (793)
order by `date` DESC
limit 10

-- 13 
select count(client_id) from client
where (district_id <= 10)
group by district_id
Order by district_id 

-- 14 

select count(type), type from card
group by type
order by type 

-- 15
select account_id, sum(amount) from loan
group by amount, account_id
order by amount DESC
limit 10

-- 16
select count(loan_id),`date` from loan
where (`date`<= 930907)
group by `date`
order by `date` DESC

-- 17 
select duration, count(loan_id),`date` from loan
where (`date` BETWEEN 971201 AND 971231)
group by duration, `date` 
order by `date`, duration 

-- 18 
