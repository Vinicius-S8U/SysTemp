create database systemp; 

use systemp;

create table Clientes (
idCliente int auto_increment, primary key (idCliente),
Nome_Cliente varchar(50),
CNPJ char(14),
Inscricao_Estadual char(9), 
Contato_Nome varchar(30),
Contato_email varchar(40),
Contato_Tel varchar(15),
Estado char(2),
Cidade varchar(30));

insert into Clientes (Nome_Cliente, CNPJ, Inscricao_Estadual, Contato_Nome, Contato_email, Contato_Tel, Estado, Cidade)
values ('SEW Eurodrive do Brasil LTDA', '85765386000150', '210234856', 'Leandro Almeida', 'leandro.almeida@sew.com.br', '(21)98547-2234', 'RJ', 'Rio de Janeiro'),
		('Zanini Renk LTDA', '75667312000231', '385847547', 'José Carlos', 'j.carlos@zaninirenk.com.br', '(11)98604-73021', 'SP', 'São Paulo'),
        ('Usina Etanol Com. e Exp. LTDA', '54896012000398', '321546876','Marcos Silva', 'marcossilva@etanol.com.br', '(19)90871-7564', 'SP', 'Indaiatuba'),
        ('STAR Equipamentos EIRELI', '67345372000189', '339857092','Juliana Soares', 'j.soares@star.com.br', '(31)96754-8662', 'MG', 'Extrema');

select * from clientes;

-- Tabela Cadastro_Site

create table Cadastro_usuario (
idCliente int auto_increment, primary key(idCliente),
Login varchar(30),
Senha varchar(25),
email varchar(50)); 

insert into Cadastro_usuario (Login, Senha, email)
values ('manutencaosew', 'manusew@5532', 'manutencao1@sew.com.br'),
		('renkzanini', 'Manu@Tencao3021', 's.moura@zaninirenk.com.br'),
        ('usinaetanol.manutencao', 'UEtanol#25', 'manutencao@etanol.com.br'),
        ('StarEquip', 'StarEmanu$79', 'a.tadeu@star.com.br'); 

select * from Cadastro_usuario;

-- Tabela Sensor 

create table Sensor (
idSensor int auto_increment, primary key(idSensor),
Nome_Cliente varchar(50), 
Maquina_cliente varchar(30),
Faixa_temp_Celsius char(5)); 

alter table Sensor change Faixa_temp_Celsius Faixa_temp char(7);

insert into Sensor (Nome_Cliente, Maquina_Cliente, Faixa_temp)
values ('SEW Eurodrive do Brasil LTDA', 'Redutor Planetario 1', '40-55°C'),
		('Zanini Renk LTDA', 'RE2', '50-60°C'),
        ('Usina Etanol Com. e Exp. LTDA', 'Redutor 5', '37-43°C'),
        ('STAR Equipamentos EIRELI', 'RP1', '44-49°C'); 
        
	select * from Sensor; 
        
-- Tabela Registro_temperatura

create table Registro_temperatura (
idSensor int auto_increment, primary key(idSensor),
Registro_Temp varchar(5), 
Data_Hora datetime); 

insert into Registro_temperatura (Registro_temp, Data_Hora)
values ('46.5', '2022-01-22 13:32:15'); 

alter table Registro_temperatura change Registro_temp Registro_temp char(7);

update Registro_temperatura set Registro_temp = '46.54°C' where idSensor = 1; 

select * from Registro_temperatura; 
