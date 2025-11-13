USE ecommerce;

-- CLIENTS

INSERT INTO clients (Fname, Minit, Lname, CPF, street, district, complement, Zip) VALUES
	('Ana', 'M', 'Silva', '12345678901', 'Rua A', 'Centro', 'Casa 1', '01001000'),
	('Bruno', 'F', 'Souza', '23456789012', 'Rua B', 'Jardins', 'Apto 21', '02002000'),
	('Carla', 'L', 'Pereira', '34567890123', 'Rua C', 'Vila Nova', '', '03003000'),
	('Daniel', 'A', 'Oliveira', '45678901234', 'Rua D', 'Centro', '', '04004000'),
	('Eduarda', 'S', 'Rocha', '56789012345', 'Rua E', 'Liberdade', 'Casa 3', '05005000'),
	('Felipe', 'J', 'Lima', '67890123456', 'Rua F', 'Centro', 'Bloco B', '06006000'),
	('Gabriela', 'T', 'Costa', '78901234567', 'Rua G', 'Mooca', '', '07007000'),
	('Henrique', 'P', 'Mendes', '89012345678', 'Rua H', 'Bela Vista', '', '08008000'),
	('Isabela', 'C', 'Ramos', '90123456789', 'Rua I', 'Centro', 'Casa 8', '09009000'),
	('João', 'D', 'Cardoso', '01234567890', 'Rua J', 'Aclimação', '', '10010000');


-- PRODUCT

INSERT INTO product (Pname, gender, category, avaliation, Size, price) VALUES
	('Calça Jeans Slim', 'U', 'Calca', 4.5, 'M', 159.90),
	('Calça Social', 'M', 'Calca', 4.2, 'G', 199.90),
	('Shorts Esportivo', 'U', 'Shorts', 4.8, 'P', 79.90),
	('Shorts Jeans', 'F', 'Shorts', 4.0, 'M', 99.90),
	('Camisa Polo', 'M', 'Camisa', 4.3, 'G', 129.90),
	('Camisa Social', 'M', 'Camisa', 4.1, 'M', 149.90),
	('Moletom Canguru', 'U', 'Moletom', 4.9, 'G', 219.90),
	('Moletom Fechado', 'U', 'Moletom', 4.7, 'M', 189.90),
	('Camisa Oversized', 'U', 'Camisa', 4.6, 'G', 99.90),
	('Shorts Tactel', 'M', 'Shorts', 4.4, 'G', 69.90),
	('Calça Wide Leg', 'F', 'Calca', 4.2, 'M', 179.90),
	('Camisa Regata', 'U', 'Camisa', 4.0, 'P', 49.90);


-- PURCHASE

INSERT INTO purchase (idClient_purchase, purchaseStatus, purchase_desc, freight, ispaid) VALUES
	(1, 'CONFIRMADO', 'Compra de roupas casuais', 12.90, TRUE),
	(3, 'PROCESSANDO', 'Pedido esportivo', 9.90, FALSE),
	(5, 'CONFIRMADO', 'Moletom & Camisas', 14.90, TRUE),
	(2, 'CANCELADO', 'Pedido cancelado pelo cliente', 0.00, FALSE),
	(7, 'PROCESSANDO', 'Shorts e Camisas', 11.50, FALSE);


-- PAYMENT

INSERT INTO payment (idClient_payment, idPurchase_payment, typePayment, Pvalue) VALUES
	(1, 1, 'PIX', 172.80),
	(5, 3, 'CARTAO', 334.70),
	(3, 2, 'DINHEIRO', 89.90),
	(2, 4, 'PIX', 0.00),
	(7, 5, 'CARTAO', 181.40);


-- STOCK

INSERT INTO stock (category, gondola, quantity) VALUES
	('Calca', 'A1', 30),
	('Shorts', 'B2', 45),
	('Camisa', 'C3', 70),
	('Moletom', 'D4', 25);


-- SUPPLIER

INSERT INTO supplier (socialName, CNPJ, contact) VALUES
	('Tex Premium LTDA', '11111111111111', '11999990000'),
	('Brasil Moda SA', '22222222222222', '11988880000'),
	('Confeccoes Urban', '33333333333333', '11977770000'),
	('FashionX Imports', '44444444444444', '11966660000');

-- SELLER

INSERT INTO seller (socialName, tradeName, CNPJ, CPF, location, contact) VALUES
	('Vendas Center LTDA', 'CenterShop', '55555555555555', NULL, 'São Paulo', '11955550000'),
	('Loja do Roupas SA', 'ModaExpress', '66666666666666', NULL, 'Campinas', '11944440000'),
	('João Vendas ME', NULL, NULL, '12345678901', 'Santos', '11933330000'),
	('FashionHouse ME', 'FHouse', '77777777777777', NULL, 'Guarulhos', '11922220000');


-- productSeller

INSERT INTO productSeller (idPSeller, idProduct, buyQuantity) VALUES
	(1, 1, 50),
	(1, 3, 30),
	(2, 5, 40),
	(2, 7, 20),
	(3, 4, 15),
	(4, 8, 25);


-- productPurchase

INSERT INTO productPurchase (idPPproduct, idPPpurchase, ppQuantity, ppStatus) VALUES
	(1, 1, 1, 'DISPONIVEL'),
	(5, 1, 1, 'DISPONIVEL'),
	(7, 3, 2, 'DISPONIVEL'),
	(3, 2, 1, 'DISPONIVEL'),
	(10, 5, 2, 'DISPONIVEL');


-- stockLocation

INSERT INTO stockLocation (idSproduct, idSstock, storageLocation) VALUES
	(1, 1, 'Prateleira 1A'),
	(3, 2, 'Prateleira 2B'),
	(5, 3, 'Prateleira 3C'),
	(7, 4, 'Prateleira 4D');

-- productSupplier

INSERT INTO productSupplier (idPSsupplier, idPSproduct, Quantity, supplyPrice, lastRestock) VALUES
	(1, 1, 100, 89.90, '2025-01-10'),
	(1, 3, 150, 39.90, '2025-01-10'),
	(2, 5, 200, 59.90, '2025-01-15'),
	(3, 7, 120, 99.90, '2025-01-18'),
	(4, 8, 80, 79.90, '2025-01-20');
