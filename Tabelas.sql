-- banco de dados e-commerce

CREATE DATABASE ecommerce;
USE ecommerce;


-- criacao tabela cliente
CREATE TABLE clients (
	idClient INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(15),
    Minit VARCHAR(3),
    Lname Varchar(15),
    CPF CHAR(11) NOT NULL,
    CONSTRAINT unique_cpf_client UNIQUE(CPF) ,
    street VARCHAR(40),
    district VARCHAR(40),
    complement VARCHAR(40),
    Zip CHAR(8)
);

-- produto

CREATE TABLE product (
	idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(20),
    gender ENUM('M', 'F', 'U'),
    category ENUM('Calca', 'Shorts', 'Camisa', 'Moletom') NOT NULL,
    avaliation DECIMAL(2,1) DEFAULT 0,
    Size VARCHAR(3) NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    stock INT DEFAULT 0
);

-- pedido

CREATE TABLE purchase (
	idPurchase INT AUTO_INCREMENT PRIMARY KEY,
    idClient_purchase INT,
    purchaseStatus ENUM('CANCELADO', 'CONFIRMADO', 'PROCESSAMENTO'),
    purchase_desc VARCHAR(100),
    freight DECIMAL(4,2) DEFAULT 0,
    ispaid BOOL DEFAULT FALSE,
    CONSTRAINT  fk_purchase_client FOREIGN KEY (idClient_purchase) REFERENCES clients(idClient)
);

-- pagamento

CREATE TABLE payment (
    idPayment INT AUTO_INCREMENT PRIMARY KEY,
    idClient_payment INT,
    idPurchase_payment INT,
    typePayment ENUM('PIX', 'DINHEIRO', 'CARTAO'),
    Pvalue DECIMAL(6,2),
    CONSTRAINT fk_payment_client FOREIGN KEY (idClient_payment) REFERENCES clients(idClient),
    CONSTRAINT fk_payment_purchase FOREIGN KEY (idPurchase_payment) REFERENCES purchase(idPurchase)
);

