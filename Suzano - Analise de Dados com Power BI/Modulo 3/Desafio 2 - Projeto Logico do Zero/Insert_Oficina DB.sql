USE Oficina;

SELECT * FROM PessoaFisica;
INSERT INTO PessoaFisica VALUES (1, 'Pablo', 12345678910, 'Governado Valadares, 333', '11137564556'),
								(2, 'Gabriel', 08975386541, 'Paraíso Vermelho, 17', '11997665745'),
                                (3, 'Afonso', 78531297453, 'Rua Arlindo Bezerra, 99', '11091184726'),
                                (4, 'Amadeu', 89674435241, 'Salmão, 13', '11997674632'),
                                (5, 'Thais', 90877865576, 'Pilates, 7', '11976556477'),
                                (6, 'Sabino', 07795647385, 'Bangu, 25', '11999098896');

SELECT * FROM Veiculo;
INSERT INTO Veiculo VALUES 	(1, 1, 'FGB4567'),
							(2, 2, 'BDS7563'),
                            (3, 3, 'FGH8944'),
                            (4, 4, 'GGD4214'),
                            (5, 5, 'FES2144'),
                            (6, 6, 'JHT2134');

SELECT * FROM Conserto;
INSERT INTO Conserto VALUES (1, 'Não funciona'),
							(2, 'Quebrado'),
                            (3, 'Não liga'),
                            (4, 'Barulho'),
                            (5, 'Pneu furado'),
                            (6, 'Ar condicionado quebrado');
                            
SELECT * FROM Mecanico;
INSERT INTO Mecanico VALUES	(1, 'Tadeu', 'Rua B', 'Borracharia'),
							(2, 'Jonas', 'Av Siqueira', 'Eletricista'),
                            (3, 'Pimpolho', 'Amoroso, 555', 'Qualquer tipo de reparo'),
                            (4, 'Gabi Gol', 'Rua dos Tamborins, 1', 'Funilaria'),
                            (5, 'Dudu', 'Rua Selvagem, 54', 'Eletricista'),
                            (6, 'Zé Carlos', 'Av. Sirigaita', 'Motor');

SELECT * FROM OdServiço;
INSERT INTO OdServiço VALUES 	(1, '2022/09/08', '134.50', '15.00', '149.50', 'AGUARDANDO', NULL),
								(2, '2022/09/06', '198.90', '80.90', '207.88', 'CONCLUIDO', '2022/09/09'),
								(3, '2022/09/03', '930.99', '520.10', '930.99', 'CONCLUIDO', '2022/09/10'),
								(4, '2022/08/18', '245.70', '110.90', '356.60', 'EM ANDAMENTO', NULL),
								(5, '2022/08/30', '480.87', '10.15', '491.02', 'CANCELADO', NULL),
								(6, '2022/08/25', '736.56', '7.50', '736.56', 'EM ANDAMENTO', NULL);
                                
SELECT * FROM Autorização;
INSERT INTO Autorização VALUES 	(1, FALSE),
								(2, TRUE),
								(3, TRUE),
								(4, TRUE),
								(5, FALSE),
								(6, TRUE);
                                
SELECT * FROM Pecas;
INSERT INTO Pecas VALUES 	(1, 'Volante', '15.00'),
							(2, 'Pistão', '80.90'),
							(3, 'Cambio', '520.10'),
							(4, 'Caixa eletrica', '110.90'),
							(5, 'Pneu', '10.15'),
							(6, 'Ar Condicionado', '7.50');
                                
SELECT * FROM Serviços;
INSERT INTO Serviços VALUES 	(1, 'Problemas Eletricos', '134.50'),
								(2, 'Caixa de cambio quebrado', '198.90'),
								(3, 'Problemas Eletricos', '930.99'),
								(4, 'Peça proxima a caixa de direção danificada', '245.70'),
								(5, 'Pneu Furado', '480.87'),
								(6, 'O sistema de ar condicionado danificada', '736.56');

SELECT Autorização.Autorizado, OdServiço.idOdServiço, Clientes.idClientes
	FROM Autorização
    CROSS JOIN OdServiço, Clientes;
