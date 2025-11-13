-- primeira consulta, select simples dos produtos do meu banco, porem, trazendo apenas algumas colunas
-- e com clausula para especificar a consulta
SELECT Pname AS Produto, category AS Tipo FROM product WHERE gender = 'U';

-- segunda consulta, expressao matematica direto no bnanco, simulando um desconto
SELECT  Pname AS Produto, price, round(price * 0.15, 2) AS Desconto, round(price - (Price * 0.15), 2) AS Preco_Final 
	FROM product;
    
-- Terceira consulta, order by para ordenar os clientes por endereco
SELECT CONCAT(Fname, ' ', Lname) AS Nome, Concat(street, ', ', district, ', ', complement, ', ', zip) AS Endereco
	FROM clients;
    
-- Quarta consulta, exibir categoria de itens com mais de 3 produto em estoquer
SELECT category, COUNT(*) AS total_products FROM product
	GROUP BY category
	HAVING COUNT(*) > 3;

-- Consulta por cliente que realizaram compras
SELECT  CONCAT(c.Fname, ' ', c.Lname) AS Nome, p.idPurchase, p.purchaseStatus FROM clients AS c
	JOIN purchase AS p ON p.idClient_purchase = c.idClient;
    
-- consulta pelos pagamentos ja realizados
SELECT CONCAT(c.Fname, ' ', c.Lname) AS Nome, p.idPurchase, p.purchase_desc, p.ispaid FROM clients AS c
	JOIN purchase AS p ON p.idClient_purchase = c.idClient AND p.ispaid = 1;