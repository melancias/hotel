create table tab_cliente (
	pk_id serial,
	nome varchar (200),
	cpf varchar (11),
	datnasc date,
	ende varchar (40),
	email varchar (200),
	telefone varchar (20);
);
 INSERT INTO tab_cliente VALUES
 (1, 'Kauany', '05157079028', '02/04/2005', 'Rua 123', 'kauanylimalopes@gmail.com', '51 40028922');
-- tabela de dados do cliente ^^

CREATE TABLE tab_genero (
pk_gen_id serial primary key,
valorgen TEXT
);
insert into tab_genero values 
(1, 'feminino'),
(2, 'masculino'),
(3, 'nb'),
(4, 'fluido'),
(0, 'outro');

-- tabela do radio de genero ^^

CREATE table tab_quartos (
nomequarto TEXT,
id_quarto serial primary key
);

INSERT INTO tab_quartos values 
('caos', 1),
('nyx', 2),
('eros', 3),
('hera', 4),
('castorpollux', 5);

-- tabela com o nome e id dos quartos ^^
ALTER TABLE 'tab_cliente'
  ADD PRIMARY KEY ('pk_id'),
  ADD KEY 'id_quarto' ('tab_quartos'),
  ADD KEY 'pk_gen_id' ('tab_genero');
--   indices para tabela de clientes ^^
  
  ALTER TABLE 'tab_cliente'
  ADD CONSTRAINT 'pk_gen_id' FOREIGN KEY ('tab_genero') REFERENCES 'tab_cliente' ('pk_id'),
  ADD CONSTRAINT 'id_quartos' FOREIGN KEY ('tab_quartos') REFERENCES 'tab_cliente' ('pk_id'),
COMMIT;

-- limitadores para a tabela de clientes ^^