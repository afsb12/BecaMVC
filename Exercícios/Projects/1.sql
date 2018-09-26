create table cliente
	(
		cod_cli smallint not null,
		nome_cli varchar(40) not null,
		endereco varchar(40)null,
		cidade varchar(20) null,
		cep	char(08)	null,
		uf	char(02)	null,
		primary key(cod_cli));
create table vendedor
	(
		cod_vend	smallint not null,
		nome_vend	varchar(40)	not null,
		sal_fixo	decimal(9,2) not null,
		faixa_comiss char(01) not null,
		primary key(cod_vend));

create table produto
	(
		cod_prod	smallint not null,
		unid_prod	char(03)	not null,
		desc_prod	varchar(20)	not null,
		val_unit	decimal(9,2) not null,
		primary key(cod_prod));

create table pedido 
	(
		num_ped		smallint	not null,
		prazo_entr	smallint	not null,
		cd_cli		smallint	not null
		references cliente(cod_cli),
		cd_vend	smallint not null
		references vendedor (cod_vend),
		primary key (num_ped));

create table item_pedido
	(
		no_ped	smallint	not null
	references pedido (num_ped),
		cd_prod		smallint not null
	references produto(cod_prod),
		qtd_ped	float		not null);

insert into cliente (cod_cli,nome_cli,endereco ,cidade,	cep	,uf) values
	(1,'Ricardo','Rua flores da montanha','São Paulo', 0585989, 'SP'),
	(2,'Luiz','Rua das Candeiras','Rio de Janeiro', 9831723, 'RJ'),
	(3,'Guilherme','Rua do que já pagaram','Recife', 0585989, 'PE'),
	(4,'Renan','Rua dos mineirinhos','Belo Horizonte', 7371283, 'MG'),
	(5,'Fernando','Rua que nunca Apareceram','Itapecerica da selva', 0585989, 'AL');

insert into vendedor(cod_vend,nome_vend,sal_fixo,faixa_comiss) values
	(1,'Rosana',2800,0),
	(2,'Rodrigo',2800,1),
	(3,'Diogo',2800,1),
	(4,'Guilherme',2800,1),
	(5,'Adans',2800,0);

select * from vendedor;

insert into produto(cod_prod,unid_prod,desc_prod,val_unit) values 
	(1,'Kg','Bolo de chocolate',23.50),
	(2,'M','Fita isolante',3.50),
	(3,'g','Creme dental',2.50),
	(4,'L','Àgua',23.50),
	(5,'W','Caixa de Som',23.50);

select desc_prod, unid_prod,val_unit from produto;

insert into pedido(num_ped,prazo_entr,cd_cli,cd_vend) values
	(1,10,1,1),
	(2,9,2,2),
	(3,8,3,3),
	(4,7,4,4),
	(5,6,5,5),
	(6,5,1,2),
	(7,4,2,3),
	(8,3,3,4),
	(9,2,4,5),
	(10,1,5,1);

select * from pedido;

insert into item_pedido(no_ped,cd_prod,qtd_ped) values
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5);
	select * from item_pedido;

--2
	select c.nome_cli, c.cidade,c.uf from cliente c;

--3
	select * from cliente;
	select * from produto;
	select * from pedido;
	select * from item_pedido;
	select * from vendedor;

	select no_ped, cd_prod, qtd_ped  from item_pedido where qtd_ped = 2;

	select nome_cli from cliente where cidade = 'Recife';

	select * from produto where unid_prod = 'Kg' and val_unit > 2;

	select * from cliente where cidade = 'São Paulo' or cep > 0 and cep <1000000;

	select * from pedido where prazo_entr <= 5;

	select * from produto where val_unit between 0.10 and 5;

	select * from produto where unid_prod like '%k%';

	select * from vendedor where nome_vend not like '%a%';

	select * from vendedor where cod_vend in(3,4,5);

	select nome_vend,sal_fixo from vendedor  order by nome_vend;

	select desc_prod, val_unit from produto where unid_prod = 'm' order by 2;

	select nome_vend, ((sal_fixo * 1.75)+120)  Novo_Sal from vendedor where faixa_comiss = 1 order by nome_vend;

	select MIN(sal_fixo) Minimo ,Max(sal_fixo) Maximo from vendedor

	select AVG(sal_fixo) MédiaSalarial from vendedor

	select count(*) Quantidade from vendedor where sal_fixo >2000

	select distinct cidade, count(cidade) qtd_clientes from cliente group by cidade

	insert into cliente(cod_cli,nome_cli,endereco,cidade,cep,uf) values
	(6,'Joao','Rua de baixo','São Paulo','81293712','SP');

	select  no_ped, count(*) total_itens from item_pedido group by no_ped

	select * from item_pedido

	select no_ped, count(*) total_itens 
	from item_pedido
	group by no_ped
	having count(*)>=1;

	select c.nome_cli,p.cd_cli, p.num_ped  from  cliente c, pedido p where c.cod_cli = p.cd_cli

	select c.nome_cli, c.uf, p.prazo_entr
	from cliente c, pedido p
	where c.cod_cli= p.cd_cli and 
	p.prazo_entr > 3 and
	(c.uf = 'RJ' or c.uf ='SP')

	select c.nome_cli nome_cli, p.prazo_entr prazo_entrega, p.num_ped pedido
	from pedido p , cliente c
	where p.cd_cli = c.cod_cli 
	order by p.prazo_entr desc

	select c.nome_cli, p.num_ped, prod.desc_prod, p.prazo_entr
	from cliente c,pedido p ,produto prod, item_pedido ped
	where ped.cd_prod = prod.cod_prod and
			ped.no_ped= p.num_ped and
			prod.desc_prod = 'Bolo de chocolate' and
			p.prazo_entr >= 1 
			order by c.nome_cli;

	select distinct v.nome_vend
	from vendedor v, pedido p, item_pedido ped, produto prod
	where v.cod_vend = p.cd_vend and
		prod.desc_prod  = 'Bolo de Chocolate'
		order by v.nome_vend

	select  count(distinct c.cod_cli)
	from item_pedido ped, pedido p , vendedor v, cliente c
	where v.cod_vend = p.cd_vend and
			c.cod_cli = p.cd_cli and
			v.nome_vend = 'Diogo'

	select count(distinct c.cod_cli)
	from cliente c, pedido p, vendedor v
	where v.cod_vend = p.cd_vend and 
			c.cod_cli = p.cd_cli and
			c.uf = 'SP'
	
	select desc_prod
	from produto prod
	where cod_prod  in
		(select cod_prod
			from item_pedido ped
			where prod.cod_prod = ped.cd_prod and ped.qtd_ped = 4
		);

			
	select desc_prod
	from produto 
	where cod_prod  in
		(select cd_prod
			from item_pedido 
			where  qtd_ped = 4
		);

	select nome_vend
	from vendedor
	where sal_fixo = (
		select avg(sal_fixo)
		from vendedor);

	select distinct nome_vend
	from vendedor
	where cod_vend in (
	select distinct v.nome_vend  from produto prod, item_pedido ped, pedido p, vendedor v
	where p.cd_vend = cd_vend and
			p.num_ped = ped.cd_prod and
			prod.unid_prod = 'Kg'    );

	select v.cod_vend , v.nome_vend 
	from vendedor v
	where 'Kg' = All
		(select unid_prod 
			from pedido p, item_pedido ped, produto prod
			where p.num_ped = ped.no_ped and
			ped.cd_prod = prod.cod_prod and
			p.cd_vend = v.cod_vend);

		select c.nome_cli, c.cod_cli
		from cliente c
		where exists
			(select count(*)
				from pedido p
				where c.cod_cli = p.cd_cli
				having count(*)<2);
	
	select * from produto

	update produto
	set val_unit = 10
	where cod_prod =1

	begin transaction
		update vendedor
		set sal_fixo = 4000
		rollback		


	update vendedor
	set sal_fixo =(sal_fixo * 1.27) + 100;	

	select * from vendedor;

	create view produto_kilo (Nome_Produto)
	as
		select p.desc_prod from produto p
		where p.unid_prod = 'Kg'
		;
		
	select * from  produto_kilo

	create view Salario_Vendedor2(id_Funcionario, nome_Funcionario, salario_Anual)
	as
		select v.cod_vend, v.nome_vend, v.sal_fixo *12 
		from vendedor v
		

		select * from  Salario_Vendedor2

	create view vend (nome_vendedor, cod_pedido, prod_vend)
	as
		select v.nome_vend 
		from vendedor v
		where v.cod_vend in 
			(select p.num_ped, prod.desc_prod
				from pedido p, item_pedido ped, produto prod
				v.cod_vend = p.cd_vend and
			  p.num_ped = ped.no_ped and);
			  

