INSERT INTO medico(crm, nome, esp) VALUES("1", "Medico 1", "Geral");
INSERT INTO enfermeira(cre, nome, FK_enf_chefe) VALUES("1", "Enf 1", NULL);
INSERT INTO enfermeira(cre, nome, FK_enf_chefe) VALUES("2", "Enf 2", "1");
INSERT INTO ala(id, nome) VALUES(1, "Ala 1");
INSERT INTO ala(id, nome) VALUES(2, "Ala 2");
INSERT INTO quarto(num, andar, FK_ala_id) VALUES(1,1,1);
INSERT INTO paciente(cpf, nome, FK_quarto_num, entrada, saida) VALUES("12345678900", "Paciente 1", 1, "2024-07-25", "2024-07-28");
INSERT INTO medicopaciente(FK_medico_crm, FK_paciente_cpf) VALUES("1","12345678900");
INSERT INTO enfermeiraala(FK_enfermeira_cre, fk_ala_id) VALUES(2,1);