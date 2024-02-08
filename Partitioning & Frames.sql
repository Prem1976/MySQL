use interview;

select * from agents;
select * from orders;

select a.agent_name, sum(o.ord_amount) Order_Amount
from agents a inner join orders o using(agent_code)
group by a.agent_name
order by Order_Amount
limit 5;

select * from
(select *, rank() over(order by Order_Amount asc) rnk
from (select a.agent_name, sum(o.ord_amount) Order_Amount
from agents a inner join orders o using(agent_code)
group by a.agent_name) tbl1) tbl2
where rnk<6;

select * from
(select a.agent_name, sum(o.ord_amount) Order_Amount,
rank() over(order by sum(o.ord_amount) asc) rnk
from agents a inner join orders o using(agent_code)
group by a.agent_name) tbl
where rnk<6;

select * from customer;

select * from
(select cust_country, cust_name, min(outstanding_amt) Min_Amount,
rank() over (partition by cust_country order by min(outstanding_amt) asc) rnk
from customer
where agent_code not in (select agent_code from agents where agent_name='Mukesh')
group by cust_country, cust_name) tbl
where rnk=1;

select * from customer;

select *,
sum(receive_amt) over (partition by cust_country) tot_rcv_amt from 
customer;

select cust_name, cust_country, sum(receive_amt)
from customer
group by cust_name, cust_country
order by cust_country;

select * from agents;
select * from orders;

select *, 
case
	when tbl.Avg_Adv_Amt<750 then tbl.commission*0.75
	when tbl.Avg_Adv_Amt between 750 and 1000 then tbl.commission*0.9
else
	tbl.commission*1.2
end
as New_Commission
from(
select a.agent_code, a.agent_name, a.commission, round(avg(o.advance_amount),2) Avg_Adv_Amt
from agents a inner join orders o using (agent_code)
group by a.agent_code, a.agent_name
order by a.agent_name)tbl;

