-- Atividade 3
-- 1. Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as 
-- informações dos estudantes deste registro dessa escola.
 
CREATE DATABASE db_escola;
USE db_escola;

-- 2. Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos 
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.

CREATE TABLE tb_estudantes(
id bigint auto_increment,
nome_estu VARCHAR(255),
periodo VARCHAR(255),
serie VARCHAR(255),
idade INT,
nota DOUBLE,
primary key(id));
-- 3. Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Vinicius","noturno","2 ano",17,8.0);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Maicon","integral","8 serie",15,5.5);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Marlos","noturno","1 ano",16,8.9);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Cristiano","matutino","3 ano",18,9.0);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Ronaldo","matutino","7 serie",14,6.5);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Messi","integral","5 serie",12,10.0);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Daniel","noturno","2 ano ",20,7.7);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("James","matutino","3 ano",22,9.5);

SELECT * FROM tb_estudantes;
-- 4. Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- 5. Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_estudantes SET periodo = "noturno" WHERE id = 2;

SELECT * FROM tb_estudantes;