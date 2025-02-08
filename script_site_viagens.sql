-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Usuario (
Id_usuario VARCHAR(20) PRIMARY KEY,
Nome VARCHAR(50),
Email VARCHAR(50),
Senha VARCHAR(20),
Telefone VARCHAR(12),
Id_reserva VARCHAR(30)
)

CREATE TABLE Pacote de viagem (
Id_pacote VARCHAR(20) PRIMARY KEY,
Destino VARCHAR(50),
Descricao VARCHAR(200),
Preco DECIMAL(15),
Disponibilidade VARCHAR(20)
)

CREATE TABLE Pagamento+Reserva (
Id_pagamento VARCHAR(20),
Valor NUMERIC(15),
Status VARCHAR(20),
Usuario_id VARCHAR(20),
Separador1 Número(4),
Id_reserva VARCHAR(30),

Status VARCHAR(20),
data_reserva DATETIME,
id_pacote VARCHAR(10),
PRIMARY KEY(Id_pagamento,Id_reserva)
)

CREATE TABLE Tem (
Id_reserva VARCHAR(30),
Id_pacote VARCHAR(20),
FOREIGN KEY REFERENCES Pagamento+Reserva (Id_pagamento,Id_reserva),
FOREIGN KEY(Id_pacote) REFERENCES Pacote de viagem (Id_pacote)
)

ALTER TABLE Usuario ADD FOREIGN KEY REFERENCES Pagamento+Reserva (Id_pagamento,Id_reserva)
