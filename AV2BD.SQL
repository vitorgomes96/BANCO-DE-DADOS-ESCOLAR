 -----------------TABELAS------------------------
 
 CREATE TABLE "Aluno" (
"id_aluno" INTEGER PRIMARY KEY,
"nome" TEXT NOT NULL,
"cpf" TEXT NOT NULL UNIQUE,
"data_nascimento" TEXT NOT NULL,
"email" TEXT NOT NULL UNIQUE,
"telefone" TEXT 
);

CREATE TABLE "Professor" (
"id_professor" INTEGER PRIMARY KEY,
"nome" TEXT NOT NULL,
"cpf" TEXT NOT NULL UNIQUE,
"email" TEXT NOT NULL UNIQUE,
"especialidade" TEXT NOT NULL
);

CREATE TABLE "Materia" (
"id_materia" INTEGER PRIMARY KEY,
"nome" TEXT NOT NULL,
"id_professor" INTEGER NOT NULL,
FOREIGN KEY ("id_professor") REFERENCES "Professor"("id_professor")
);

CREATE TABLE "Turma" (
"id_turma" INTEGER PRIMARY KEY,
"nome" TEXT NOT NULL
);

CREATE TABLE "Turma_Materia" (
"id_turma" INTEGER NOT NULL,
"id_materia" INTEGER NOT NULL,
PRIMARY KEY ("id_turma", "id_materia"),
FOREIGN KEY ("id_turma") REFERENCES "Turma"("id_turma"),
FOREIGN KEY ("id_materia") REFERENCES "Materia"("id_materia")
);
  
CREATE TABLE "Matricula" (
"id_matricula" INTEGER PRIMARY KEY,
"id_aluno" INTEGER NOT NULL,
"id_turma" INTEGER NOT NULL,
"data_matricula" TEXT NOT NULL,
"situacao" TEXT
  CHECK ("situacao" IN ('Ativa', 'Cancelada','Concluido')),
FOREIGN KEY ("id_aluno") REFERENCES "Aluno" ("id_aluno"),
FOREIGN KEY ("id_turma") REFERENCES "Turma"("id_turma")
  );

----------------------CADASTRO DOS ALUNOS--------------------------------

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (1,'Joao', '44444444444','01/01/2000','joao@email.com','81999990001');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (2,'Maria','55555555555','02/01/2000','maria@email.com', '81999990002');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (3,'Pedro','66666666666','03/01/2000','pedro@email.com', '81999990003');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (4,'Lucas','77777777777','04/01/2000','lucas@email.com', '81999990004');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (5,'Julia','88888888888','05/01/2000','julia@email.com', '81999990005');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (6,'Bruno','99999999999','06/01/2000','bruno@email.com', '81999990006');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (7,'Jose','00000000001','07/01/2000','jose@email.com','81999990007');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (8,'Aline','00000000002','08/01/2000','aline@email.com','81999990008');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (9,'Mariana','00000000003','09/01/2000','mariana@email.com','81999990009');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (10, 'Juliana','00000000004','10/01/2000','juliana@email.com','81999990010');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (11,'Sara','00000000005','11/01/2000','sara@email.com','81999990011');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (12,'Rogerio','00000000006','12/01/2000','rogerio@email.com','81999990012');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (13,'Diego','00000000007','13/01/2000','diego@email.com','81999990013');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (14,'Caio','00000000008','14/01/2000','caio@email.com','81999990014');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (15,'Rafael','00000000009','15/01/2000','rafael@email.com','81999990015');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (16,'Rafaela','00000000010','16/01/2000','rafaela@email.com','81999990016');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (17,'Raul','00000000011','17/01/2000','raul@email.com','81999990017');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (18,'Saulo','00000000012','18/01/2000','saulo@email.com','81999990018');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (19,'Ana','00000000013','19/01/2000','ana@email.com','81999990019');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (20,'Rodrigo','00000000014','20/01/2000','rodrigo@email.com','81999990020');

INSERT INTO "Aluno" ('id_aluno','nome','cpf','data_nascimento','email','telefone')
VALUES (21,'Vitor','00000000015','21/01/2000','vitor@email.com','81999990021');

---------------------CADASTRO PROFESSORES---------------------------

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (1,'Carlos Silva', '00111111111', 'carlos@email.com', 'Portugues');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (2,'Ana Souza', '00222222222', 'ana@email.com', 'Matematica');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (3,'Marcos Lima', '00333333333', 'marcos@email.com', 'Geografia');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (4,'Jose Vitor', '00444444444', 'jvitor@email.com', 'Ciencias');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (5,'Joao Pedro', '00555555555', 'jpedro@email.com', 'Geometria');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (6,'Lucas Fernando', '00666666666', 'lfernando@email.com', 'Ingles');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (7,'Maria Silva', '00777777777', 'marias@email.com', 'Espanhol');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (8,'Mariana Santos', '00888888888', 'marianas@email.com', 'Educação Fisica');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (9,'Juliana Silva', '00999999999', 'julianas@email.com', 'Artes');

INSERT INTO "professor" ('id_professor','nome','cpf','email','especialidade')
VALUES (10,'Bruna Souza', '99000000000', 'brunas@email.com', 'Historia');

--------------------------CADASTRO MATERIA---------------------------

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (1,'Portugues',1);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (2,'Matematica',2);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (3,'Geografia',3);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (4,'Ciencias',4);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (5,'Geometria',5);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (6,'Ingles',6);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (7,'Espanhol',7);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (8,'Educação fisica',8);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (9,'Artes',9);

INSERT INTO "Materia" ('id_materia','nome','id_professor')
VALUES (10,'Historia',10);

----------------------CADASTRO TURMA-------------------------------

insert into "Turma" ('id_turma','nome')
VALUES (1,'Primeiro ano');

insert into "Turma" ('id_turma','nome')
VALUES (2,'Segundo ano');

----------------------CADASTRO TURMA_MATERIA------------------------

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (1,1);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (1,2);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (1,3);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (1,4);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (1,5);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (1,6);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (1,9);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (2,1);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (2,2);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (2,3);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (2,6);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (2,7);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (2,8);

insert into "Turma_Materia" ('id_turma','id_materia')
VALUES (2,10);

-------------------------MATRICULAS --------------------------

INSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(1, 1, 1, '01/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(2, 2, 1, '02/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(3, 3, 1, '03/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(4, 4, 1, '04/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(5, 5, 1, '05/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(6, 6, 1, '06/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(7, 7, 1, '07/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(8, 8, 1, '08/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(9, 9, 1, '09/08/2025', 'Cancelada');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(10, 10, 1, '10/08/2025', 'Cancelada');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(11, 11, 2, '11/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(12, 12, 2, '12/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(13, 13, 2, '13/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(14, 14, 2, '14/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(15, 15, 2, '15/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(16, 16, 2, '16/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(17, 17, 2, '17/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(18, 18, 2, '18/08/2025', 'Ativa');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(19, 19, 2, '19/08/2025', 'Cancelada');

iNSERT INTO "Matricula" ('id_matricula','id_aluno','id_turma','data_matricula','situacao')
VALUES(20, 20, 2, '20/08/2025', 'Cancelada');


---------------ALTERAR SITUAÇÃO ATIVA PARA CANCELADA E CONFERIR----------------

UPDATE "Matricula"
SET "situacao" = 'Cancelada'
WHERE "id_matricula" = 1;

SELECT * FROM "matricula"
WHERE "id_matricula" = 1;

----------------EXCLUIR REGISTRO E CONFERIR---------------

DELETE FROM "Aluno"
WHERE "id_aluno" = 21;

SELECT * FROM "Aluno"
WHERE "id_aluno" = 21;

---------------------LISTAR ALUNOS EM ORDEM ALFABETICA------------------------------

SELECT "nome","cpf","email"
FROM "Aluno"
ORDER BY "nome" ASC;

-------------LISTA DE MATRICULAS ATIVA---------------------------

SELECT * FROM "Matricula"
WHERE "situacao" = 'Ativa';

-------------LISTA DE MATRICULAS CANCELADA-----------------------------

SELECT * FROM "Matricula"
WHERE "situacao" = 'Cancelada';