alter table cidade add constraint FK_estado_cidade foreign key(idestado) references estado(id);
alter table adotantedoador add constraint FK_cidade_adotantedoador foreign key(idcidade) references cidade(id);
alter table situacaoanimal add constraint FK_animal_situacaoanimal foreign key(idanimal) references animal(id);
alter table animal add constraint FK_raca_animal foreign key(idraca) references raca(id);
alter table adocaodoacao add constraint FK_animal_adocaodoacao foreign key(idanimal) references animal(id);
alter table adocaodoacao add constraint FK_adotante_adocaodoacao foreign key(idadotante) references adotantedoador(id);
alter table adocaodoacao add constraint FK_doador_adocaodoacao foreign key(iddoador) references adotantedoador(id);
alter table fotosanimal add constraint FK_animal_fotosanimal foreign key(idanimal) references animal(id);
alter table animal add constraint FK_animal_cidade foreign key(idcidade) references cidade(id);

insert into estado(nomeestado, sigla) values ('São Paulo', 'SP'),
                                             ('Rio de Janeiro', 'RJ'),
                                             ('Minas Gerais', 'MG'),
                                             ('Outro', 'OT');

insert into cidade(nomecidade, idestado) values ('Adamantina', 1),
                                                ('Águas de Lindóia', 1),
                                                ('Águas de Santa Bárbara', 1),
                                                ('Águas de São Pedro', 1),
                                                ('Agudos', 1),
                                                ('Álvaro de Carvalho', 1),
                                                ('Araraquara', 1),
                                                ('Araras', 1),
                                                ('Arealva', 1),
                                                ('Areiópolis', 1),
                                                ('Assis', 1),
                                                ('Atibaia', 1),
                                                ('Avaí', 1),
                                                ('Avaré', 1),
                                                ('Bananal', 1),
                                                ('Bariri', 1),
                                                ('Barra Bonita', 1),
                                                ('Barretos', 1),
                                                ('Barueri', 1),
                                                ('Bastos', 1),
                                                ('Bauru', 1),
                                                ('Bernardino de Campos', 1),
                                                ('Bertioga', 1),
                                                ('Birigui', 1),
                                                ('Bocaina', 1),
                                                ('Bofete', 1),
                                                ('Boituva', 1),
                                                ('Boraceia', 1),
                                                ('Borborema', 1),
                                                ('Borebi', 1),
                                                ('Botucatu', 1),
                                                ('Bragança Paulista', 1),
                                                ('Brotas', 1),
                                                ('Cabrália Paulista', 1),
                                                ('Cafelândia', 1),
                                                ('Campinas', 1),
                                                ('Campos do Jordão', 1),
                                                ('Cândido Mota', 1),
                                                ('Capivari', 1),
                                                ('Catanduva', 1),
                                                ('Cerqueira César', 1),
                                                ('Chavantes', 1),
                                                ('Conchas', 1),
                                                ('Cubatão', 1),
                                                ('Dois Córregos', 1),
                                                ('Dourado', 1),
                                                ('Dracena', 1),
                                                ('Duartina', 1),
                                                ('Echaporã', 1),
                                                ('Espírito Santo do Pinhal', 1),
                                                ('Espírito Santo do Turvo', 1),
                                                ('Fartura', 1),
                                                ('Fernandópolis', 1),
                                                ('Franca', 1),
                                                ('Gália', 1),
                                                ('Garça', 1),
                                                ('Guaíra', 1),
                                                ('Guaratinguetá', 1),
                                                ('Guarujá', 1),
                                                ('Guarulhos', 1),
                                                ('Herculândia', 1),
                                                ('Holambra', 1),
                                                ('Hortolândia', 1),
                                                ('Iacanga', 1),
                                                ('Iaras', 1),
                                                ('Ibitinga', 1),
                                                ('Ibiúna', 1),
                                                ('Igaraçu do Tietê', 1),
                                                ('Ilha Comprida', 1),
                                                ('Indaiatuba', 1),
                                                ('Ipaussu', 1),
                                                ('Itaí', 1),
                                                ('Itanhaém', 1),
                                                ('Itapecerica da Serra', 1),
                                                ('Itapetininga', 1),
                                                ('Itapeva', 1),
                                                ('Itapevi', 1),
                                                ('Itaporanga', 1),
                                                ('Itatinga', 1),
                                                ('Itu', 1),
                                                ('Itupeva', 1),
                                                ('Jaboticabal', 1),
                                                ('Jacareí', 1),
                                                ('Jaú', 1),
                                                ('Júlio Mesquita', 1),
                                                ('Jumirim', 1),
                                                ('Jundiaí', 1),
                                                ('Laranjal Paulista', 1),
                                                ('Leme', 1),
                                                ('Lençóis Paulista', 1),
                                                ('Limeira', 1),
                                                ('Lindoia', 1),
                                                ('Lins', 1),
                                                ('Macatuba', 1),
                                                ('Mairiporã', 1),
                                                ('Marília', 1),
                                                ('Matão', 1),
                                                ('Mirassol', 1),
                                                ('Mogi das Cruzes', 1),
                                                ('Mogi-Mirim', 1),
                                                ('Mongaguá', 1),
                                                ('Monte Azul Paulista', 1),
                                                ('Novo Horizonte', 1),
                                                ('Olímpia', 1),
                                                ('Osasco', 1),
                                                ('Ourinhos', 1),
                                                ('Palmital', 1),
                                                ('Paraguaçu Paulista', 1),
                                                ('Pardinho', 1),
                                                ('Paulínia', 1),
                                                ('Paulistânia', 1),
                                                ('Pederneiras', 1),
                                                ('Pereiras', 1),
                                                ('Peruíbe', 1),
                                                ('Piracicaba', 1),
                                                ('Piraju', 1),
                                                ('Pirajuí', 1),
                                                ('Pirassununga', 1),
                                                ('Piratininga', 1),
                                                ('Pompeia', 1),
                                                ('Praia Grande', 1),
                                                ('Pratânia', 1),
                                                ('Promissão', 1),
                                                ('Quatá', 1),
                                                ('Queiroz', 1),
                                                ('Queluz', 1),
                                                ('Ribeirão Preto', 1),
                                                ('Rio Claro', 1),
                                                ('Saltinho', 1),
                                                ('Salto', 1),
                                                ('Salto Grande', 1),
                                                ('Santa Clara D´Oeste', 1),
                                                ('Santo André', 1),
                                                ('Santos', 1),
                                                ('São Carlos', 1),
                                                ('São Paulo', 1),
                                                ('São Pedro', 1),
                                                ('São Pedro do Turvo', 1),
                                                ('São Roque', 1),
                                                ('São Sebastião', 1),
                                                ('Serra Azul', 1),
                                                ('Serra Negra', 1),
                                                ('Serrana', 1),
                                                ('Socorro', 1),
                                                ('Sorocaba', 1),
                                                ('Suzano', 1),
                                                ('Tatuí', 1),
                                                ('Taubaté', 1),
                                                ('Tietê', 1),
                                                ('Tuiutí', 1),
                                                ('Tupã', 1),
                                                ('Tupi Paulista', 1),
                                                ('Ubatuba', 1),
                                                ('Ubirajara', 1),
                                                ('Uru', 1),
                                                ('Urupês', 1),
                                                ('Valinhos', 1),
                                                ('Vargem', 1),
                                                ('Várzea Paulista', 1),
                                                ('Vera Cruz', 1),
                                                ('Vinhedo', 1),
                                                ('Viradouro', 1),
                                                ('Vista Alegre do Alto', 1),
                                                ('Vitória Brasil', 1),
                                                ('Votorantim', 1),
                                                ('Votorantim', 1),
                                                ('Zacarias', 1),
                                                ('Rio de Janeiro', 2),
                                                ('Niterói', 2),
                                                ('São Gonçalo', 2),
                                                ('Duque de Caxias', 2),
                                                ('Nova Iguaçu', 2),
                                                ('Itaboraí', 2),
                                                ('São João de Meriti', 2),
                                                ('Maricá', 2),
                                                ('Belford Roxo', 2),
                                                ('Nilópolis', 2),
                                                ('Mesquita', 2),
                                                ('Queimados', 2),
                                                ('Magé', 2),
                                                ('Teresópolis', 2),
                                                ('Petrópolis', 2),
                                                ('Cachoeiras de Macacu', 2),
                                                ('Guapimirim', 2),
                                                ('Itacuruçá', 2),
                                                ('Mangaratiba', 2),
                                                ('Rio Bonito', 2),
                                                ('Silva Jardim', 2),
                                                ('Araruama', 2),
                                                ('Saquarema', 2),
                                                ('Arraial do Cabo', 2),
                                                ('Cabo Frio', 2),
                                                ('Armação dos Búzios', 2),
                                                ('Iguaba Grande', 2),
                                                ('Macaé', 2),
                                                ('Campos dos Goytacazes', 2),
                                                ('São Fidélis', 2),
                                                ('Bom Jesus do Itabapoana', 2),
                                                ('Natividade', 2),
                                                ('Porciúncula', 2),
                                                ('Cardoso Moreira', 2),
                                                ('Italva', 2),
                                                ('Itaocara', 2),
                                                ('São José de Ubá', 2),
                                                ('Camuci', 2),
                                                ('Miracema', 2),
                                                ('Santo Antônio de Pádua', 2),
                                                ('Aperibé', 2),
                                                ('Laje do Muriaé', 2),
                                                ('Itaperuna', 2),
                                                ('Resende', 2),
                                                ('Itatiaia', 2),
                                                ('Porto Real', 2),
                                                ('Quatis', 2),
                                                ('Barra Mansa', 2),
                                                ('Volta Redonda', 2),
                                                ('Pinheiral', 2),
                                                ('Valença', 2),
                                                ('Rio das Flores', 2),
                                                ('Vassouras', 2),
                                                ('Barra do Piraí', 2),
                                                ('Piraí', 2),
                                                ('Rio Claro', 2),
                                                ('Nova Friburgo', 2),
                                                ('Abadia dos Dourados', 3),
                                                ('Acailândia', 3),
                                                ('Caconde', 3),
                                                ('Divinópolis', 3),
                                                ('Ervália', 3),
                                                ('Florestal', 3),
                                                ('Guaraniésia', 3),
                                                ('Ipatinga', 3),
                                                ('Itajubá', 3),
                                                ('Jacareí de Minas', 3),
                                                ('Lagoa da Prata', 3),
                                                ('Lavras', 3),
                                                ('Mariana', 3),
                                                ('Nanuque', 3),
                                                ('Nova Lima', 3),
                                                ('Piumhi', 3),
                                                ('Queluzito', 3),
                                                ('Rio Pomba', 3),
                                                ('São João del-Rei', 3),
                                                ('Timóteo', 3),
                                                ('Uberaba', 3),
                                                ('Varginha', 3),
                                                ('Wenceslau Braz', 3),
                                                ('Outro', 4);


insert into adotantedoador(nome, cpf, telefone, email, dtnascimento, endereco, idcidade)
values ('Duda Giglioli', '51547682132', '(14)99812-1409', 'dudaguilice@gmail.com', '2000-08-19', 'Rua das Flores, 153', 1);
insert into adotantedoador(nome, cpf, telefone, email, dtnascimento, endereco, idcidade)
values ('Nickolas Mello', '76547682132', '(14)99821-0915', 'nickolasmello@gmail.com', '2000-02-21', 'Rua das  Margaridas, 17', 2);
insert into adotantedoador(nome, cpf, telefone, email, dtnascimento, endereco, idcidade)
values ('Guilherme Martos', '1154203610', '(14)99278-9520', 'guimartos@gmail.com', '2000-03-08', 'Rua do Girassol, 160', 4);

insert into raca(descricao) values ('Pinscher');
insert into raca(descricao) values ('Labrador');

insert into animal(nomeanimal, sexo, idade, porte, idraca, idcidade) values ('Thanos', 'M', 3, 1, 1, 2);
insert into animal(nomeanimal, sexo, idade, porte, idraca, idcidade) values ('Gael', 'M', 2, 3, 2, 4);
insert into animal(nomeanimal, sexo, idade, porte, idraca, idcidade) values ('Kiwi', 'M', 5, 2, 1, 3);
insert into animal(nomeanimal, sexo, idade, porte, idraca, idcidade) values ('KiwiSS', 'M', 5, 2, 1, 3);
insert into animal(nomeanimal, sexo, idade, porte, idraca, idcidade) values ('KiwiSSa', 'M', 5, 2, 1, 3);

insert into situacaoanimal(situacao, idanimal) values ('Bom Estado', 1);
insert into situacaoanimal(situacao, idanimal) values ('Vacinas ok, bom estado', 2);
insert into situacaoanimal(situacao, idanimal) values ('Bom Estado', 3);

insert into adocaodoacao(iddoador, idadotante, idanimal, dataadocao) values (1, 2, 1, '2023-02-10');
insert into adocaodoacao(iddoador, idadotante, idanimal, dataadocao) values (2, 3, 2, '2023-03-06');
insert into adocaodoacao(iddoador, idadotante, idanimal, dataadocao) values (3, 1, 3, '2022-11-05');

insert into fotosanimal(fotoa, fotob, fotoc, fotod, fotoe, idanimal)
values('adjh', 'fdskjgh', 'dfjhb', 'dfskaljh', 'dkfsjgb', 2);