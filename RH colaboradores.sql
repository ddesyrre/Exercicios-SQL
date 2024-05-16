CREATE DATABASE db_RH; 

USE db_RH; 

CREATE TABLE tb_dadoscolaboradores (
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	funcao VARCHAR(255) NOT NULL,
	senioridade VARCHAR(255) NOT NULL,
    dataingresso DATE,
	salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_dadoscolaboradores (nome, funcao, senioridade, dataingresso, salario) VALUES 
("Gertrudes Souza", "Frontend", "Pleno", "2022-07-06", "6150.00"),
("Eulália Silva", "Backend", "Senior", "2017-07-04", "18750.00"),
("Jacinto Santos", "Fullstack", "Junior", "2024-07-01", "3500.00"),
("Adelino Lima", "Backend", "Pleno", "2021-07-08", "6100.00"),
("Zulmira Soares", "Frontend", "Senior", "2022-07-06", "19100.00"),
("Genoveva Garcia", "Backend", "Estagiarie", "2022-07-06", "1850.00");

SELECT * FROM tb_dadoscolaboradores;

SELECT * FROM tb_dadoscolaboradores WHERE salario > 2000;

SELECT * FROM tb_dadoscolaboradores WHERE salario < 2000.00;

UPDATE tb_dadoscolaboradores SET funcao = "Fullstack" WHERE id = 6;

SELECT * FROM tb_dadoscolaboradores;

