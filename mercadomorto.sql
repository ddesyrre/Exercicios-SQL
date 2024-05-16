CREATE DATABASE db_mercadopreso;

USE db_mercadopreso;

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    OS VARCHAR(50),
    marca VARCHAR(50),
    preco DECIMAL(10, 2),
    estoque INT
);

INSERT INTO Produtos (nome, OS, marca, preco, estoque) VALUES
("iPhone 11", "iOS", "Apple", "2000.00", 200),
("Galaxy Pocket", "Android", "Samsung", "120.00", 712),
("iPhone 14 Pro", "iOS", "Apple", "7000.00", 142),
("Lumia 1020", "Windows Phone", "Nokia", "499.00", 32),
("Lumia 920", "Windows Phone", "Nokia", "349.00", 14),
("Galaxy Z Flip", "Android", "Samsung", "3500.00", 678),
("Zenfone 10", "Android", "Asus", "4500.00", 829),
("P60 Pro", "Android", "Huawei", "7999.00", 97);

SELECT * FROM Produtos WHERE Preco > 500;

SELECT * FROM Produtos WHERE Preco < 500;

UPDATE Produtos SET Preco = 219.00 WHERE ID = 5;
