use ecommerce;
-- inserindo dados no banco de dados

show tables;
desc clients;
insert into clients(Fname, Minit, Lname, CPF, Address) 
					values ('Marluce','M','Sales', 12346789, 'rua amora verlha 100, Santa Luzia - MG'),
							 ('Marcos','O','Pilares', 987654321,'rua alemeda ezequiel dias 895, Centro - BH'),
							 ('Rivaldo','F','Santos', 45678913,'avenida vilarinho 3008, Venda Nova - BH'),
							 ('Juliane','S','Fernandes', 789123456,'rua Padre Pedro Pinto 566, Venda Nova - BH'),
							 ('Rosa','G','Alves', 98745631,'avenidade Pedro I 4519, Pampulha - BH'),
							 ('Ismeria','M','Carmo', 654789123,'rua Goias 64, Centro - BH');
                             
desc product;
insert into product(Pname, Classification_kids, Category, Feedback, Size) 
						values ('Fone de ouvido',false,'Eletrônico','4',null),
                              ('Barbie Elsa',true,'Brinquedos','3',null),
                              ('Body Carters',true,'Vestimenta','5',null),
                              ('Microfone Vedo',False,'Eletrônico','4',null),
                              ('Sofá retrátil',False,'Brinquedos','3','3x57x80'),
                              ('Farinha',False,'Alimentos','2',null),
                              ('Fire Stick',False,'Eletrônico','3',null);

desc orders;
insert into orders (idOrderClient, OrderStatus, OrderDescription, ShippingCost)
					values (1, default,'compra via aplicativo',null),
						 (2,default,'compra via aplicativo',50),
						 (3,'Confirmado',null,null),
						 (4,default,'compra via web site',150);

desc productOrder;
select * from orders;
insert into productOrder(idPOproduct, idPOorder, poQuantity, poStatus) 
					values(22,1,2,null), 
						(23,2,1,null), 
						(25,3,1,null);

desc productStorage;
insert into productStorage (StorageLocation,Quantity) 
							values ('Belo Horizonte',1000),
									('Belo Horizonte',500),
									('Santa Luzia',10),
									('Santa Luzia',100),
									('Santa Luzia',10),
									('Contagem',60);

show tables;
insert into storeagelocation (idLproduct, idLstorage, location) 
						values(1,2,'MG'),
							(2,6,'SP');

insert into supplier (SocialName, CNPJ, contact) 
							values ('Comercial Vilarinho', 123456789123456,'21985474'),
								('Eletrônicos Gomes',854519649143457,'21985484'),
								('Eletrônicos Vasconcelos', 934567893934695,'21975474');


insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values 
						('Tech eletronics', null, 123456789456321, null, 'Belo Horizonte', 219946287),
					    ('Botique Durgas',null,null,123456783,'Belo Horizonte', 219567895),
						('Kids World',null,456789123654485,null,'Santa Luzia', 1198657484);
                        

select * from product;
insert into productSeller (idPseller, idPproduct, prodQuantity) values 
						 (1,23,80),
                         (2,24,10);
                         
                         
select * from clients;

-- Contando clientes
select count(*) from clients;

-- Recuperar quantos pedidos foram realizados pelos clientes
select c.idClient, Fname as Client_name, count(*) as Num_Orders
		from clients c 
        inner join orders o ON c.idClient = o.idOrderClient
		group by idClient; 

