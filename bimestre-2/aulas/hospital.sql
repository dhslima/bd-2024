CREATE DATABASE hospital;
USE hospital;

CREATE TABLE medico(
	crm VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(50),
    esp VARCHAR(100)
);

CREATE TABLE enfermeira(
	cre VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(50),
    FK_enf_chefe VARCHAR(20),
    FOREIGN KEY(FK_enf_chefe) REFERENCES enfermeira(cre)
);

CREATE TABLE ala(
	id INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE quarto(
	num INT PRIMARY KEY,
    andar INT,
    FK_ala_id INT,
    FOREIGN KEY(FK_ala_id) REFERENCES ala(id)
);

CREATE TABLE paciente(
	cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(50),
    FK_quarto_num INT,
    entrada DATE,
    saida DATE,
    FOREIGN KEY (FK_quarto_num) REFERENCES quarto(num)
);

CREATE TABLE medicopaciente(
	FK_medico_crm VARCHAR(20),
    FK_paciente_cpf VARCHAR(11),
    data DATE,
    hora VARCHAR(5),
    PRIMARY KEY(FK_medico_crm, FK_paciente_cpf),
    FOREIGN KEY(FK_medico_crm) REFERENCES medico(crm),
    FOREIGN KEY(FK_paciente_cpf) REFERENCES paciente(cpf)
);

CREATE TABLE enfermeiraala(
	FK_enfermeira_cre VARCHAR(20),
    FK_ala_id INT,
    PRIMARY KEY(FK_enfermeira_cre, FK_ala_id),
    FOREIGN KEY(FK_enfermeira_cre) REFERENCES enfermeira(cre),
    FOREIGN KEY(FK_ala_id) REFERENCES ala(id)
);