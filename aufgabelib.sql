insert into book
values(1,"Am Arsch vorbei geht auch ein Weg", 22.5);

insert into book
values (2, "Irgendwann wird Sommer", 19.9);


update book
set titel="Achtsam morden"
Where idbook=2;

update book
set preis=17.50
where idbook=2;

insert into customer (idcustomer, name)
values(1,"Maria Müller");

insert into customer (idcustomer, name)
values(2,"Marietta Slomka");

insert into customer (idcustomer, name)
values(3,"Klaus Kleber");

insert into customer (idcustomer, name)
values(4,"Gundula Gaukelei");

insert into book (idbook,titel,preis)
values(3,"Die Bibel",35.0);

delete from book
where idbook=3;

insert into book (idbook,titel,preis)
values(3,"Der kleine Drache Furzipups", 19.90);

delete from transaction
where idtransaction=1;

insert transaction
values (1,3,2,'2023-03-01','2023-03-09');

insert transaction
values (2,3,2,'2023-02-01','2023-02-15');

insert transaction
values (3,3,2,'2023-01-15','2023-01-25');

update transaction
set customer_idcustomer=2
where idtransaction=2;

insert transaction
values (4,1,2,'2023-01-10','2023-01-20');

select *
from transaction
where start_bor
          between '2023-01-01' and '2023-01-31';

select *
from transaction
where customer_idcustomer=3;

select customer.name
from transaction join customer on customer.idcustomer=transaction.customer_idcustomer
where transaction.customer_idcustomer=3;