create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id int auto_increment primary key,
categoria varchar(10),
tamanho varchar(10),
borda varchar(20)
);

create table tb_pizza(
id int not null auto_increment primary key,
sabor varchar(10),
valor decimal(5,2),
vegetariana boolean,
refrigante varchar(10),
id_categoria int,
foreign key (id_categoria) references tb_categoria(id));

insert into tb_categoria (categoria, tamanho, borda) values
("Salgada","Grande","Catupiri"),
("Salgada","Pequena","Atum"),
("Salgada","Brotinho","Cheddar"),
("Doce","Grande","Doce de leite"),
("Doce","Pequena","Ninho");

insert into tb_pizza (sabor, valor, vegetariana,refrigante, id_categoria) values
("Calabresa",18.99,false,"Dolly",4),
("Muçarela",27.50,true,"Itubaína",2),
("Portuguesa",19.99,false,"Coca-Cola",2),
("Marguerita",27.99,true,"Cha Mate",1),
("Frango",26.99,false,"Toddynho",1),
("Requeijão",31.99,true,"Dolly",3),
("Prestígio",56.99,true,"Vinho",5),
("Chocolate",47.99,true,"Skol",4);

select * from tb_pizza where valor > 45;
 
select * from tb_pizza where valor between 29 and 60;
    
select * from tb_pizza where sabor like "%C%";
    
select * from tb_pizza inner join tb_categoria on tb_categoria.id= tb_pizza.id_categoria;

drop table tb_pizza;

select * from  db_pizzaria_legal;

