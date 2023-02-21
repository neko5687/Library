update book
set titel="Achtsam morden"
Where idbook=2;

update book
set preis=17.50
where idbook=2;

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

insert into transaction (idtransaction,customer_idcustomer, book_idbook)
values(1,2,3);
