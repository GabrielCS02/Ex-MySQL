create database db_cidade_das_carnes;
use db_cidade_das_carnes;

     create table tb_categoria (
		id bigint auto_increment,
        
		tipo_da_carne varchar(255) not null,
        churrasco boolean not null,
		congelado boolean not null,       
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",true,true);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",true,true);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",false,false);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",false,false);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Aves",true,true);
    

 
     create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        estoque_produto int not null,
        validade varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_produto;
     
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Picanha",100,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Contrafilé",60,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Alcatra",80,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Maminha",60,255,"30 dias",2);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Acém",80,255,"30 dias",3);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Bisteca",60,255,"30 dias",4);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Frango Inteiro",45,255,"15 dias",5);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Asinha de Frango",20,255,"15 dias",5);
    
    select * from tb_produto where preco > 50;
    
    select * from tb_produto where preco between 3 and 60;
    
    select * from tb_produto where nome like "%C%";
    
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
    select * from tb_produto where categoria_id = 5; -- frango
    
  