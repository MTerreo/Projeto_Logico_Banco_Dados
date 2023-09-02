use ecommerce;

show tables;
desc cliente;

insert into cliente (Nome_Completo,CPF,Data_Nascimento,Email,Telefone_1,Telefone_2,Logradouro,Numero,Bairro,Complemento,Cidade,Estado,CEP) 
values 
('João dos Santos', '12312312301', '1990-01-11', 'joaosantos@teste.com.br', '012991910001', null, 'Rua da Praia', 1000, 'Praia do Meio', null, 'Santos', 'SP', '01234001'),
('Ana Bella','12345678902','1998-02-22','anabella@teste.com.br','012999999999',null,'Av. Central', 105,'Centro',null,'Santos','SP','01234002'),
('José Pescador','12312312303','1999-03-31','joaopescador@teste.com.br','012991910001',null,'Rua do Barco', 1000,'Praia do Meio',null,'Santos','SP','01234003'),
('Anamaria Flor','12345678904','1998-02-22','anaflor@teste.com.br','012999994444',null,'Av. Goibeira', 1935,'Centro',null,'Santos','SP','01234004'),
('Juca do Mar','12312312305','2000-01-11','jucadomar@teste.com.br','012991913333',null,'Rua da Praça', 1000,'Praça  do Mar',null,'Santos','SP','01234005'),
('Ana Paula Peixoto','12345678906','2001-02-22','anapaulapeixoto@teste.com.br','012999992222',null,'Av. Central', 275,'Centro',null,'Santos','SP','01234006');
 
desc produto; 

insert into produto (Nome, Categoria, Descrição, Valor_Unitário, Possui_garantia, Avaliação, Dimensões)
values
('Fone De Ouvido Sem Fio Bluetooth','Audio e Video','Fone Ouvido A6S Bluetooth Preto ABS + Case. Os Fones A6S têm um estilo único que se inspira na simplicidade','149.99','Sim','4.7',null),
('Fone de Ouvido Sem Fio WAAW by Alok Sense','Audio e Video','Fone de Ouvido Sem Fio WAAW by Alok Sense 200HB, Bluetooth, Microfone Integrado','303.9','Sim','4',null),
('Fone De Ouvido Rosa Gatinho','Audio e Video','Fone De Ouvido Rosa Azul Roxo Preto Gatinho Bluetooth Led Orelha Gato Dobrável sem Fio - caixa som banheiro','61','Sim','4',null),
('Pneu Aro 13 Goodyear',' Automotivo','Pneu Aro 13 Goodyear 175/70R13 82T - Direction Touring','332.91','Não','4.9','13'),
('Som Automotivo Pioneer MP3',' Automotivo','Som Automotivo Pioneer MP3 Player Rádio AM/FM - Bluetooth USB Auxiliar MVH-S218BT','419.99','Sim','4.7',null),
('Capacete Moto Integral Fechado',' Automotivo','Capacete Moto Integral Fechado Masculino e Feminino Pro Tork R8 Com Viseira Fumê 56 58 60 Com Nota F','112.41','Sim','5',null),
('Cadeirinha para Auto Go Safe','Bebês','Cadeirinha para Auto Go Safe Alessa Nero - 9 a 36kg','313.41','Sim','4.6',null),
('Andador Infantil Sonoro','Bebês','Andador Infantil Sonoro até 12 Kg Styll Baby Softway Laranja','152.15','Não','4.3',null),
('Kit Bolsa Bebê','Bebês','Kit Bolsa Bebê Mala Mochila Saída Maternidade Menino Menina - Bambinelli','134.91','Não','4.7',null),
('Escova Secadora Mondial','Beleza e Perfumaria','Escova Secadora Mondial Cerâmica 1200W - com Íons 3 Velocidades Golden Rose ES-02','147.24','Sim','4.8',null),
('Maquina De Acabamento Trimmer','Beleza e Perfumaria','Maquina De Acabamento Trimmer Para Cabelo E Barba Bivolt Hairstar KM 203 - HAIR CLIPPER','67.99','Sim','3.9',null),
('Hidratante Facial Vichy','Beleza e Perfumaria','Hidratante Facial Vichy - Minéral 89','99','Não','4.8',null),
('Cozinha Infantil Fogão','Brinquedos','Cozinha Infantil Fogão Brinquedo Completa Pia Sai Água Interativa Grande - Pais&Filhos','116.94','Sim','4',null),
('Moto Elétrica Infantil','Brinquedos','Moto Elétrica Infantil Ban 2 Marchas 6V - Bandeirante','699','Sim','4.7',null),
('Boneca Bebê Reborn','Brinquedos','Boneca Bebê Reborn Gatinha De 55cm 100% Silicone Brastoy','273.54','Sim','4.8',null),
('Cortina Roma Para Sala','Cama, Mesa e Banho','Cortina Roma Para Sala e Quarto 4,00 x 2,50 Admirare','109.16','Não','4.2',null),
('Kit Com 04 Toalhas De Banho Gigante','Cama, Mesa e Banho','Kit Com 04 Toalhas De Banho Gigante / Banhão Quasar - Verde/Rosa/Cinza/Azul - 75x150cm - Lmpeter','125.09','Não','4.2',null),
('Tapete Saturs Shaggy Pelo Alto','Cama, Mesa e Banho','Tapete Saturs Shaggy Pelo Alto Mesclado Cinza - 50 x 100 cm Tapete para Sala e Quarto - Tapetes Saturs','43.55','Não','3.1',null),
('Churrasqueira Elétrica Mondial','Casa e Contrução','Churrasqueira Elétrica Mondial 1800W - Grand Steak & Grill','139.00','Sim','4.6',null),
('Lavadora de Alta Pressão Electrolux','Casa e Contrução','Lavadora de Alta Pressão Electrolux Powerwash Eco - EWS30 1800 Libras 1450W Mangueira 3m','479.90','Sim','4.7',null),
('Torneira para Cozinha Gourmet Dupla de Mesa','Casa e Contrução','Torneira para Cozinha Gourmet Dupla de Mesa - com Monocomando Cromada Nell AM-2679','399.99','Sim','4.7',null),
('Samsung Galaxy A13','Celular e Smartphone','Smartphone Samsung Galaxy A13 128GB Azul 4G - Octa-Core 4GB RAM 6,6” Câm Quádrupla + Selfie 8MP','1214.10','Sim','4.8',null),
('iPhone 11','Celular e Smartphone','iPhone 11 Apple 64GB Branco 6,1” 12MP iOS','3254.07','Sim','4.9',null),
('Motorola Moto g31','Celular e Smartphone','Motorola Moto g31 128GB Azul 4G - Octa-Core 4GB RAM 6,4” Câm. Tripla + Selfie 13MP','1151.10','Sim','4.8',null),
('Espelho Redondo Decorativo','Decoração','Espelho Redondo Decorativo Suspenso Com Alça 50cm + Suporte Marrom Alça Caramelo - ORNATO','109.25','Não','4.7',null),
('Nicho Prateleira 2 Peças','Decoração','Nicho Prateleira 2 Peças para Decoração Banheiro Mdf Branco - Decorarte','44.00','Não','5.0',null),
('Quadros Decorativos Sala Orquidea','Decoração','Quadros Decorativos Sala Orquidea Lírio Branca Amarela Top - AQUIQTEM','47.69','Não','3.3',null),
('Geladeira/Refrigerador Brastemp','Eletrodomésticos','Geladeira/Refrigerador Brastemp Frost Free Duplex - Branca 375L BRM44 HBANA','2849.05','Sim','4.8',null),
('Lavadora de Roupas Electrolux','Eletrodomésticos','Lavadora de Roupas Electrolux LAC12 - 12Kg Cesto Inox 12 Programas de Lavagem','2059.00','Sim','4.8',null),
('Fogão de Piso 4 Bocas','Eletrodomésticos','FogAo de Piso 4 Bocas Esmaltec Bali Acendimento Manual 0104002103','479.00','Sim','4.6',null),
('Tênis Branco Feminino','Esporte e Lazer','Tênis Branco Feminino Vili Esportivo','86.39','Sim','4.7',null),
('Bicicleta aro 29','Esporte e Lazer','Bicicleta aro 29 alfameq atx freio a disco 24 marchas','1149.00','Sim','4.6',null),
('Bermuda Adidas','Esporte e Lazer','Bermuda Adidas 3S Masculina','57.69','Não','4.9',null),
('Kit Ferramentas Sparta','Ferramentas','Kit Ferramentas Sparta 129 Peças 13564 - com Maleta','113.91','Não','4.7',null),
('Jogo De Ferramentas Manuais','Ferramentas','Jogo De Ferramentas Manuais 189 Peças Fasterr FST007 Profissional','167.31','Não','4.3',null),
('Esmerilhadeira 5''','Ferramentas','Esmerilhadeira 5'' 900w Gws 9-125s 220v Controle Velocidade Bosch','538.23','Sim','4.9',null),
('PlayStation 5','Games','PlayStation 5 825GB 1 Controle Branco Sony - com Horizon Forbidden West','4654.90','Sim','4.8',null),
('Nintendo Switch','Games','Nintendo Switch OLED 64GB Branco 2 Controles - Joy-Con 7.0”','2564.05','Sim','4.9',null),
('Xbox Series X','Games','Xbox Series X 2020 Nova Geração 1TB SSD - 1 Controle Preto Microsoft','4084.91','Sim','5.0',null),
('Notebook Samsung Book','Informática','Notebook Samsung Book Intel Core i7 8GB 256GB SSD - 15,6” Full HD Windows 11 NP550XDA-KU1BR','3959.10','Sim','4.7',null),
('Impressora Multifuncional Epson','Informática','Impressora Multifuncional Epson Ecotank L4260 - Tanque de Tinta Colorida USB Wi-Fi','1619.10','Sim','4.9',null),
('Monitor Gamer AOC G2','Informática','Monitor Gamer AOC G2 Hero 27” LED Widescreen - Full HD HDMI VGA IPS 144Hz 1ms','1394.10','Sim','4.7',null),
('PRESENÇA DE ANTÍGONA','Livros','Livro - PRESENÇA DE ANTÍGONA','26.80','Não','0',null),
('Álbum Copa do Mundo','Livros','Álbum Copa do Mundo Box Exclusivo Capa Dura - Prata+ 50 Pacotes de Figurinhas Copa do Mundo 2022','244.90','Não','4.4',null),
('Box Livros J.K. Rowling','Livros','Box Livros J.K. Rowling Edição Especial - Harry Potter Exclusivo','227.91','Não','4.9',null),
('Bolsa Feminina Luxuosa','Moda','Bolsa Feminina Luxuosa Grande Matelassê Alça Ombro Com Franja - Sobrinhos Moda','50.26','Não','3.9',null),
('Mochila Tática Militar','Moda','Mochila Tática Militar Impermeavel Masculina Feminina 30 Lts - M&C','149.00','Não','5.0',null),
('Sandalia Feminina Salto Baixo','Moda','Sandalia Feminina Salto Baixo Grosso Confort Barato Via Angel 49.02','61.87','Não','5.0',null),
('Guarda-roupa Casal','Móveis','Guarda-roupa Casal com Espelho 4 Portas 4 Gavetas - Araplac Pequim','645.91','Não','4.4',null),
('Cozinha Compacta Madesa','Móveis','Cozinha Compacta Madesa Emilly Pop Com Armário e Balcão','629.99','Não','4.5',null),
('Sofá Retrátil e Reclinável','Móveis','Sofá Retrátil e Reclinável Cama inBox Compact 1,50m Tecido Suede Velusoft Cinza','799.90','Não','4.0',null),
('Lousa Quadro Branco','Papelaria','Lousa Quadro Branco Moldura De Aluminio 60x40 Cm + Caneta/Apagador - Papelaria Web','48.95','Não','48.95',null),
('Resma de Sulfite 500 folhas A4','Papelaria','Resma de Sulfite 500 folhas A4 - Report','19.99','Não','0',null),
('Calculadora Financeira HP 12C','Papelaria','Calculadora Financeira HP 12C Gold, 120 Funções, Visor LCD, RPN e ALG','359.99','Sim','4.7',null),
('Ração Premium para Cachorro','Pet Shop','Ração Premium para Cachorro Dog Chow ExtraLife - Adulto Carne Frango e Arroz 10,1kg','107.70','Não','4.8',null),
('Cercado Cachorro Articulado','Pet Shop','Cercado Cachorro Articulado Móvel Pet 6 Telas 60cm - IGUANNA','115.67','Não','4.8',null),
('Kit Shampoo e Condicionador Colônia','Pet Shop','Kit Shampoo e Condicionador Colônia - Cachorro e Gato Neutro Sanol Dog','34.20','Não','4.8',null),
('Smatrwach Relógio Digital','Relógios','Smatrwach Relógio Digital D20 Original Masculino E Feminino - 01Smart','77.31','Sim','3.9',null),
('Relógio Champion Feminino','Relógios','Relógio Champion Feminino Elegance Dourado CN27652W + Kit Colar e Brincos','239.90','Sim','4.7',null),
('Relógio Feminino Champion','Relógios','Relógio Feminino Champion Digital Espelhado Prata Original Ch40080s','247.35','Sim','4.7',null),
('Smart TV 50” Crystal 4K Samsung','TVs','Smart TV 50” Crystal 4K Samsung 50AU7700 - Wi-Fi Bluetooth HDR Alexa Built in 3 HDMI 1 USB','2516.55','Sim','4.8','50"'),
('Smart TV 50” 4K UHD D-LED','TVs','Smart TV 50” 4K UHD D-LED Semp RK8500 - VA Wi-Fi 4 HDMI 1 USB','2299.00','Sim','4.8','50"'),
('Smart TV 65” Crystal 4K Samsung','TVs','Smart TV 65” Crystal 4K Samsung 65AU7700 Wi-Fi - Bluetooth HDR Alexa Built in 3 HDMI 1 USB','3699.30','Sim','4.8','65"');
 
 
 desc empresa_frete;
 
 insert into empresa_frete(Razão_social, Nome_fantasia, CNPJ, Responsavel, Email_1, Email_2, Telefone_1, Telefone_2) 
 values
('Brasspress Transportes Urgentes Ltda','Brasspress Transportes Urgentes', '48740351000165','Daniel Costa','frete@brasspress.com','costadaniel@brasspress.com','11998569847','11902541159'),
('Expresso São Miguel Ltda','Expresso São Miguel', '00428307000430','Miguel da Silva','frete@saomiguel.com','silvamiguel@saomiguel.com','21995245698','21998456789'),
('Fedex Brasil Logistica e Transporte LTDA','Fedex', '10970887000285','Frederico Lima','frete@fedex.com','frederico@fedex.com','41995002315','41995462365'),
('EMPRESA BRASILEIRA DE CORREIOS E TELEGRAFOS','CORREIOS', '34028316000103', 'João da Silva','frete@correios.com.br','silvajoao@correios.com.br','51999666444','51987456852');

desc entrega;

insert into entrega(Código_rastreio, Status_entrega, Prazo_entrega, Valor_frete, Empresa_Frete_idEmpresa_Frete)
values
('A100001','Separado pelo fornecedor','2022-10-25', 0.0, 2),
('A100002','Separado pelo fornecedor','2022-10-31', 11.90, 2),
('A100003','Separado pelo fornecedor','2022-10-24',20.49, 2),
('A100004','Saiu do centro de distribuição','2022-10-27',7.99, 4),
('B200001','Saiu do centro de distribuição','2022-10-25',8.00, 4),
('B200002','Saiu do centro de distribuição','2022-10-22',9.40, 3),
('B200003','A caminho da sua cidade','2022-10-21', 0.0, 3),
('B200004','A caminho da sua cidade','2022-10-21', 0.0, 3),
('C300001','A caminho da sua cidade','2022-10-22', 0.0, 3),
('C300002','Na rota de entrega','2022-10-20',0.0, 2),
('C300003','Na rota de entrega','2022-10-20', 22.90, 1),
('C300004','Na rota de entrega','2022-10-20', 13.13, 4),
('D400001','Entregue','2022-10-10', 13.00, 2),
('D400002','Entregue','2022-10-07', 22.99, 3),
('D400003','Entregue','2022-10-05', 25.40, 1);
 
desc carteira_digital;

insert into carteira_digital(Numero_Carteira, Data_Adesão, Valor_conta, Valor_Cashback)
values
(123456,'2021-08-13', 0.00, 0.00),
(123654,'2021-09-03', 190.00, 0.00),
(125463,'2021-10-19', 1230.58, 0.00),
(135245,'2021-11-29', 98.42, 0.00),
(135456,'2021-12-12', 59.00, 0.00),
(133254,'2022-01-15', 0.00, 0.00),
(135684,'2022-02-18', 0.00, 231.00),
(145635,'2022-03-05', 5000.00, 712.00),
(145636,'2022-04-10', 72.81, 0.00),
(149857,'2022-05-20', 604.59, 0.00),
(153254,'2022-06-07', 231.09, 0.00),
(153698,'2022-07-18', 259.14, 0.00),
(159745,'2022-08-21', 0.00, 29.69);

desc pagamento_cartao;

insert into pagamento_cartao(Nome_Titular, Número_Cartão, Bandeira_Cartão, Data_Validade, CPF_CNPJ_Titular)
values
('Ubiratan Jesus da Motta Filho','1234567891234567','VISA','2026-10-01','12345678912'),
('Vera Cristina Cordeiro da Motta','3216549879874568','VISA','2025-07-19','98765432198'),
('Henry Ubiratan Cordeiro da Motta','1478523698521478','MASTERCARD','2024-08-21','12378945665'),
('Milton Nascimento','3698521478954123','MASTERCARD','2028-12-10','32165498745'),
('Tom Jobim','9856745812563458','MASTERCARD','2023-05-20','15948723619'),
('Edson Arantes do Nascimento','9854965874125632','ELO','2022-12-10','23651948718'),
('Emilio Santiago','2135549628414384','ELO','2026-05-21','32564197849'),
('Joaquim Maria Machado de Assis','1345649846315489','ELO','2025-06-15','11133355598'),
('Hilária Batista de Almeida','1565435748696854','HIPERCARD','2030-09-20','12398765445'),
('Carolina Maria de Jesus','1354897658451354','AMERICAN EXPRESS','2028-12-16','33211566487'),
('Sebastião Bernardes de Souza Prata','1653548794161268','MAESTRO','2026-10-18','44266598791');

desc conta;

insert into conta(Tipo_Conta, CPF, CNPJ, Fundação, Aniversario, Atividade_Economica, Profissao, Cliente_idCliente)
values
('Pessoa Física','12345678912',null,null,'1995-08-21',null,'Professor', 1),
('Pessoa Física','98765432198',null,null,'1995-05-20',null,'Analista RH', 2),
('Pessoa Física','12378945665',null,null,'2005-11-26',null,'Estudante', 3),
('Pessoa Física','32165498745',null,null,'1942-10-26',null,'Cantor', 4),
('Pessoa Física','15948723619',null,null,'1927-01-25',null,'Cantor', 5),
('Pessoa Física','23651948718',null,null,'1940-10-23',null,'Jogador de Futebol', 6),
('Pessoa Física','32564197849',null,null,'1946-12-06',null,'Cantor', 7),
('Pessoa Física','11133355598',null,null,'1839-06-21',null,'Escritor', 8),
('Pessoa Física','12398765445',null,null,'1854-01-13',null,'Sambista e Mãe de Santo', 9),
('Pessoa Física','33211566487',null,null,'1914-03-14',null,'Escritora', 10),
('Pessoa Física','44266598791',null,null,'1915-10-18',null,'Ator', 11),
('Pessoa Física','12365897469',null,null,'1930-06-23',null,'Cantora', 12),
('Pessoa Física','15648975631',null,null,'1942-06-26',null,'Cantor', 13),
('Pessoa Física','32564198765',null,null,'1946-11-29',null,'Escritora', 14),
('Pessoa Física','35798641852',null,null,'1926-05-03',null,'Geógrafo', 15),
('Pessoa Física','96385274114',null,null,'1897-04-23',null,'Maestro', 16),
('Pessoa Física','12396314785',null,null,'1927-02-23',null,'Cantor e Compositor', 17),
('Pessoa Física','65471283945',null,null,'1838-01-13',null,'Engenheiro', 18),
('Pessoa Física','45682719346',null,null,'1861-11-24',null,'Poeta', 19),
('Pessoa Física','32654897139',null,null,'1942-04-26',null,'Deputada Federal', 20),
('Pessoa Física','15645897698',null,null,'1985-08-17',null,'Rapper e Compositor', 21),
('Pessoa Física','13345678941',null,null,'1994-06-04',null,'Rapper e Compositor', 22),
('Pessoa Física','13564987594',null,null,'1971-12-28',null,'Assesora Juridica', 23),
('Pessoa Física','32566598748',null,null,'1970-04-10',null,'Tenente do Exercito Brasileiro', 24),
('Pessoa Física','52487965497',null,null,'1972-11-12',null,'Funcionário Publico', 25);

desc formas_pagamento;

insert into formas_pagamento(Pagamento_Cartão_idForma_Pagamento, Carteira_Digital_idCarteira_Virtual, Pix, Boleto_Bancário, Tranferência_Bancária)
values
(1,1,null,null,null),
(2,2,null,null,null),
(3,3,null,null,null),
(4,4,null,null,null),
(5,5,null,null,null),
(6,6,null,null,null),
(7,7,null,null,null),
(8,8,null,null,null),
(9,9,null,null,null),
(10,10,null,null,null),
(11,11,null,null,null),
(12,12,null,null,null),
(13,13,null,null,null),
(14,14,null,null,null),
(15,15,null,null,null),
(16,16,null,null,null),
(17,17,null,null,null),
(18,18,null,null,null),
(19,19,null,null,null),
(20,20,null,null,null),
(21,21,null,null,null),
(22,22,null,null,null),
(23,23,null,null,null),
(24,24,null,null,null),
(25,25,null,null,null);

desc pedido;

insert into pedido(Cliente_idCliente, Entrega_idEntrega, Formas_Pagamento_Cliente_idCliente, Status_Pedido, Descrição, Data_Pedido)
values
('1','1','1','Cancelado','Compra pelo site','2022-10-05'),
('2','2','2','Cancelado','Compra pelo Aplicativo','2022-10-07'),
('3','3','3','Cancelado','Compra pelo site','2022-10-12'),
('5','4','5','Em andamento','Compra pelo site','2022-10-13'),
('4','5','4','Em andamento','Compra pelo site','2022-09-29'),
('12','6','12','Em andamento','Compra pelo Aplicativo','2022-10-16'),
('10','7','10','Em andamento','Compra pelo Aplicativo','2022-10-17'),
('25','8','25','Processando','Compra pelo site','2022-09-13'),
('4','9','4','Processando','Compra pelo site','2022-09-22'),
('18','10','18','Processando','Compra na Loja','2022-08-21'),
('21','11','21','Processando','Compra na Loja','2022-07-20'),
('5','12','5','Processando','Compra pelo site','2022-10-06'),
('6','13','6','Entregue','Compra pelo site','2022-08-21'),
('7','14','7','Entregue','Compra pelo site','2022-05-20'),
('13','15','13','Entregue','Compra pelo site','2022-06-13');

desc estoque;

insert into estoque(Local, Responsavel, Email_1, Email_2, Telefone_1, Telefone_2)
values
('Curitiba','Pedro Souza','cd-curitiba@estoque.com',null ,'41998569632','41998569630'),
('Rio de Janeiro','João da Silva','cd-riodejaneiro@estoque.com',null ,'21998548962','21998548960'),
('São Paulo','Jose dos Flores','cd-saopaulo@estoque.com',null ,'11985478596','11985478590');

desc fornecedor;

insert into fornecedor(Razão_Social, Nome_Fantasia, CNPJ, Responsavel, Endereço_Fornecedor, Contato_Email, Contato_Email_2, Contato_Telefone_1, Contato_Telefone_2)
values
('Fornecimento Ilimitado Ltda','Ilimitado','10152325000115','Janderson Moreira','Rua Zumbi dos Palmares, Curitiba - Paraná / Brasil','contato@ilimitado.com.br',null,'41998887445','41998887450'),
('Eletronicos Brasil SA.','Brasa Eletronicos','51258659000132','Lorena Gonçalves Pinto','Rua Tia Ciata, Rio de Janeiro - Rio de Janeiro / Brasil','contato@brasaeletronico.com.br',null,'21985554775',null),
('Moveis do Brasil Ltda','Movil Moveis','26159847000119','Marilza Aparecida Nepomoceno','Avenida Tom Jobim, São Paulo - São Paulo / Brasil ','contato@movilmoveis.com',null,'11905515454',null),
('Celulares e Comunicação Ltda','CelCom Brasil','95259132000120','Ivanildo da Silva','Avenida Engenheiro Rebouças, Curitiba - Paraná / Brasil ','contato@celcom.com.br','vendas@celcom.com.br','41998552364',null);

desc produto_pedido;

insert into produto_pedido(idPePedido, idPeProduto, Quantidade, Status)
values
(5,1,1,'Sem estoque'),
(6,2,1,'Sem estoque'),
(16,3,2,'Sem estoque'),
(23,4,2,'Disponivel'),
(34,4,1,'Disponivel'),
(40,4,2,'Disponivel'),
(63,5,2,'Disponivel'),
(59,6,3,'Disponivel'),
(46,6,1,'Disponivel'),
(31,6,1,'Disponivel'),
(38,7,1,'Disponivel'),
(40,7,5,'Disponivel'),
(22,8,1,'Disponivel'),
(10,9,1,'Disponivel'),
(11,9,1,'Disponivel'),
(19,10,1,'Disponivel'),
(28,11,1,'Disponivel'),
(29,11,1,'Disponivel'),
(30,11,1,'Disponivel'),
(44,12,2,'Disponivel'),
(47,12,1,'Disponivel'),
(51,13,1,'Disponivel'),
(49,13,1,'Disponivel'),
(54,14,1,'Disponivel'),
(58,14,2,'Disponivel'),
(61,15,2,'Disponivel');

desc produto_fornecedor;

insert into produto_fornecedor(idFoFornecedor, idFoProduto)
values
(1,1),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(2,61),
(2,62),
(2,63),
(2,28),
(2,29),
(2,30),
(2,37),
(2,38),
(2,39),
(2,40),
(2,41),
(2,42),
(3,16),
(3,17),
(3,18),
(3,25),
(3,26),
(3,27),
(3,49),
(3,50),
(3,51),
(4,22),
(4,23),
(4,24);

desc produto_estoque;

insert into produto_estoque(idEsProduto, idEsEstoque, Quantidade)
values
(1,21,10),
(1,22,15),
(1,23,20),
(1,24,5),
(1,25,16),
(1,26,80),
(1,27,10),
(1,28,20),
(1,29,35),
(1,30,40),
(2,35,90),
(2,36,100),
(2,37,120),
(2,38,130),
(2,39,200),
(2,40,150),
(3,61,200),
(3,62,200);

-- Numero de clientes cadastrados
select count(*) from cliente;

-- Numero de produtos cadastrados
select count(*) from produto;

-- Numero de produtos cadastrados com avaliação superior ou igual a 4.0
select count(*) from produto
where avaliação > 4.0;