

SELECT * FROM aluno;

SELECT nome, idade, matriculado_em AS "Quando foi matriculado?" FROM aluno;

INSERT INTO aluno (
	nome, 
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
) VALUES (
	'Pedro',
	'40883898837',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla est turpis, ut accumsan lectus vestibulum vitae. Aliquam nec lectus facilisis, fringilla dui id, dictum elit. Vestibulum nunc nulla, aliquet ut laoreet posuere, ultrices non diam. Cras sodales leo a lectus euismod, cursus laoreet leo pharetra. Sed eu lectus eu lectus semper bibendum sit amet sit amet metus. Donec euismod nisi non fermentum molestie. Fusce id ligula quis sem tempor interdum. Ut ex ipsum, pretium at vehicula ac, elementum at odio. Curabitur volutpat molestie nunc non pulvinar. Ut sagittis quam augue, nec viverra ante auctor ac. Suspendisse placerat sapien magna, a sagittis libero scelerisque id.',
	35,
	100.50,
	1.89,
	TRUE,
	'1995-03-16',
	'17:30:00',
	'2022-03-22 17:05:00'
);

SELECT * FROM aluno WHERE id = 2

UPDATE aluno SET nome = 'Eduardy', cpf = '40883898837' WHERE id = 2

DELETE FROM aluno WHERE id = 1

INSERT INTO aluno (nome) VALUES ('Vinicioss Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('Joao Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');
INSERT INTO aluno (nome) VALUES ('Eduardy');

SELECT * FROM aluno WHERE nome LIKE '%o';

SELECT * FROM aluno WHERE cpf IS NOT NULL;

SELECT * FROM curso

DROP TABLE curso



INSERT INTO curso (id, nome) VALUES (1, 'HMTL');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');
INSERT INTO curso (id, nome) VALUES (3, 'CSS');

DELETE FROM aluno WHERE id = 1;

DROP TABLE aluno_curso;
DROP TABLE aluno;
DROP TABLE curso;

INSERT INTO aluno (nome) VALUES ('Eduardy');
INSERT INTO aluno (nome) VALUES ('Diego');
INSERT INTO aluno (nome) VALUES ('Shanks');

SELECT * FROM curso
SELECT * FROM aluno
SELECT * FROM aluno_curso

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em timestamp
);

CREATE TABLE curso (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id) REFERENCES aluno (id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (curso_id) REFERENCES curso (id)
);

SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM aluno_curso;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (4,2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (5,2);


UPDATE aluno SET id = 100 WHERE id = 5

INSERT INTO aluno (nome) VALUES ('Luffy');
INSERT INTO curso (id, nome) VALUES (3, 'CSS');

SELECT 
	aluno.id AS aluno_id,
	aluno.nome AS aluno_nome, 
	curso.nome AS curso_nome
	FROM aluno 
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id
	ORDER BY aluno_id
	
SELECT aluno.nome AS aluno_nome, curso.nome AS curso_nome
	FROM aluno 
	LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	LEFT JOIN curso ON curso.id = aluno_curso.curso_id
	
SELECT aluno.nome AS aluno_nome, curso.nome AS curso_nome
	FROM aluno 
	RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	RIGHT JOIN curso ON curso.id = aluno_curso.curso_id
	
SELECT aluno.nome AS aluno_nome, curso.nome AS curso_nome
	FROM aluno 
	FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	FULL JOIN curso ON curso.id = aluno_curso.curso_id
	
SELECT aluno.nome AS aluno_nome, curso.nome AS curso_nome
	FROM aluno
	CROSS JOIN curso
	

