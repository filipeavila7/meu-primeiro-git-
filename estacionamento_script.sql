create database db_estacionamento; 
use db_estacionamento; 

create table tb_cliente(
id int primary key auto_increment,
nome varchar(120) not null,
telefone varchar(50),
cpf varchar(50) unique 
); 

create table tb_veiculo(
id int primary key auto_increment,
placa varchar(120),
modelo varchar(120)
);

create table tb_entrada_saida_veiculo(
dt_saida datetime,
dt_entrada datetime,

id_cliente int,
id_veiculo int
);

alter table tb_entrada_saida_veiculo
add constraint fk_cliente_id 
	foreign key (id_cliente)
	references tb_cliente(id)
	on delete cascade,

add constraint fk_veiculo_id
	foreign key (id_veiculo)
	references tb_veiculo(id)
    on delete cascade,
    
add primary key(id_veiculo, id_cliente)




