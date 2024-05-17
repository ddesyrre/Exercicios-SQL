CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(500) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    descricao_produto VARCHAR(500) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
("medicamentos controlados", "medicamentos que só podem ser comprados com retenção da receita"),
("medicamentos não controlados", "medicamentos que não precisam de receita médica"),
("dermocosmeticos", "produtos destinados aos cuidados com a pele"),
("higiene pessoal", "produtos destinados a higiene pessoal"),
("medicamentos homeopáticos", "medicamentos feitos com substancias naturais");

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, id_categoria) VALUES
("Gel de Limpeza Facial Avène Cleanance Intense", "gel de limpeza facial", "75.90", 18, 3),
("Novalgina", "analgésico não-esteroide e antitérmico", "23.90", 785, 2),
("Tramadol", "analgésico opióide", "33.90", 74, 1),
("Papel Higiênico Neve", "papel higiênico com 32 rolos", "49.90", 52, 4),
("Almeida Prado 46", "laxante", "33.90", 41, 5),
("Alenia", "broncodilatador e corticóide", "127.90", 95, 2),
("Sertralina", "antidepressivo", "44.90", 27, 1),
("Protetor Labial Bepantol Derma FPS50", "protetor labial com proteção solar", "39.90", 7, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.*, c.nome_categoria, c.descricao_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.*, c.nome_categoria, c.descricao_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'dermocosmeticos';





