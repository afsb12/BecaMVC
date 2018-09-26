CREATE TABLE Users(
	IdUser int identity,
	FullName varchar(100),
	CPF varchar(15),
	Userlogin varchar(20),
	UserSenha varchar(20),
	DataCadastro Date default getdate()
)

insert into users (FullName,CPF,Userlogin,UserSenha)values
('Maria','987654321','jose','123123'),
('Joana','1234567234','paulo','lkjdshq');
Select * from Users

delete from Users Where IdUser = 2;

