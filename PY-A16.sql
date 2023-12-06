CREATE DATABASE Empresa;

USE Empresa;

CREATE TABLE Clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(100),
email_cliente VARCHAR(100),
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, # Inserir automaticamente a data e hora no momento do cadastro
status_cliente VARCHAR(1) #(A)TIVO ou (I)NATIVO
);

INSERT INTO Clientes (nome_cliente, email_cliente, status_cliente)
VALUES
('Ana Silva', 'ana.silva@gmail.com', 'A'),
('Claudio Dantas', 'claudio.dantas@gmail.com', 'A'),
('Marley Pazos', 'marley.pazos@gmail.com', 'I');

SELECT nome_cliente, email_cliente FROM Clientes WHERE status_cliente = 'A';

UPDATE Clientes SET status_cliente = 'I' WHERE id_cliente = 1;

DELETE FROM Clientes WHERE status_cliente = 'I';

SELECT * FROM Clientes;