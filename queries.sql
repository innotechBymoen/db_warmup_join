select client.name, account.account_number, account.`type` 
from client inner join account on client.id = account.client_id;

select a.account_number, t.`timestamp`, t.amount 
from account a inner join `transaction` t on a.id = t.account_id
where a.`type` = 'Chequing' and t.amount >= 1000;

select c.name, a.account_number, t.amount 
from client c inner join account a on c.id = a.client_id inner join `transaction` t on a.id = t.account_id 
where a.`type` = 'Investing' and c.id = 2;