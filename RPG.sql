-- Criando o banco de dados
create database db_generation_game_online;

-- usando o banco de dados
use db_generation_game_online;

-- Criando a tabela principal

create table tb_classe(
id_class bigint(20) auto_increment,
nome varchar(50) not null,
arma varchar(20) not null,
vitalidade decimal(8,2) not null,
supremo varchar(50) not null,
passiva varchar(256) not null,

primary key(id_class)
);

-- Criando a segunda tabela

create table tb_personagem(
id_perso bigint(20) auto_increment,
nome_perso varchar(50) not null,
raca_perso varchar(20) not null,
dano bigint(20) not null,
intelecto bigint(20) not null,
defesa bigint(20) not null,
fk_id_class bigint not null,
primary key(id_perso),
foreign key(fk_id_class) references tb_classe (id_class)
);

-- Populando minha primeira tabela

insert into tb_classe (nome, arma, vitalidade, supremo, passiva) values ("Xiao Ling","Alabarda",6250.50,"Terrores da Guerra","Determinação");
insert into tb_classe (nome, arma, vitalidade, supremo, passiva) values ("Carrasco","Machado de duas mãos",5402.20,"Executor do rei","Ultimo pedido");
insert into tb_classe (nome, arma, vitalidade, supremo, passiva) values ("Paladino","Espada e Escudo",9300.20,"Glória Integra","Fé");
insert into tb_classe (nome, arma, vitalidade, supremo, passiva) values ("Ninja","Adaga",2300.00,"Sombra final","Silêncio inato");
insert into tb_classe (nome, arma, vitalidade, supremo, passiva) values ("Bardo","Violão",500.00,"Canção das Lápides","Voz Angelical");
insert into tb_classe (nome, arma, vitalidade, supremo, passiva) values ("Ladrão","N/A",3500.00,"O Golpe do Baú","Dedos leves");

-- Populando minha segunda tabela
insert into tb_personagem(nome_perso, raca_perso, dano, intelecto, defesa,fk_id_class) values ("XXtentenXX","Orc",4500,300,8900,1);
insert into tb_personagem(nome_perso, raca_perso, dano, intelecto, defesa,fk_id_class) values ("RamdomXD","Nórdico",5600,200,6000,3);
insert into tb_personagem(nome_perso, raca_perso, dano, intelecto, defesa,fk_id_class) values ("BlueJesus","Elfo-Negro",7500,800,1200,5);
insert into tb_personagem(nome_perso, raca_perso, dano, intelecto, defesa,fk_id_class) values ("CostinhaChan","Dwarf",5600,200,7000,4);
insert into tb_personagem(nome_perso, raca_perso, dano, intelecto, defesa,fk_id_class) values ("Duartin","Elfo-Superior",9400,950,1000,6);
insert into tb_personagem(nome_perso, raca_perso, dano, intelecto, defesa,fk_id_class) values ("Arquitetones","Orc",3200,560,6000,2);

select * from tb_personagem;

select * from tb_personagem where dano > 2000;

select * from tb_personagem where defesa between  1000 and 2000;

select * from tb_personagem where nome_perso like "%R%";

select * from tb_personagem inner join tb_classe on tb_classe.id_class = tb_personagem.fk_id_class;

delete from tb_classe where id_class=6;

delete from tb_personagem where id_perso=7;




