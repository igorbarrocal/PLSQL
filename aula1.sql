CREATE TABLE pais (
    id_pais   NUMBER,
    nome_pais VARCHAR2(30)
);

CREATE TABLE estado (
    id_estado   NUMBER PRIMARY KEY,
    nome_estado VARCHAR2,
    id_pais     NUMBER
);

ALTER TABLE estado
    ADD CONSTRAINT fk_estado FOREIGN KEY ( id_pais )
        REFERENCES pais ( id_pais );
        
CREATE TABLE cidade (
    id_cidade   NUMBER PRIMARY KEY,
    nome_cidade VARCHAR2(30),
    id_estado   NUMBER
);

ALTER TABLE cidade
    ADD CONSTRAINT fk_cidade FOREIGN KEY ( id_estado )
        REFERENCES estado ( id_estado );

CREATE TABLE bairro (
    id_bairro   NUMBER PRIMARY KEY,
    nome_bairro VARCHAR2(30),
    id_cidade
);

ALTER TABLE bairro
    ADD CONSTRAINT fk_bairro FOREIGN KEY ( id_cidade )
        REFERENCES cidade ( id_cidade );

CREATE TABLE end_cliente (
    id_endereco NUMBER PRIMARY KEY,
    cep         NUMBER,
    logrdouro   VARCHAR2(50),
    numero      NUMBER,
    complemento VARCHAR2(50),
    id_bairro   NUMBER
);

ALTER TABLE end_cliente
    ADD CONSTRAINT fk_end_cliente FOREIGN KEY ( id_bairro )
        REFERENCES bairro ( id_bairro );





