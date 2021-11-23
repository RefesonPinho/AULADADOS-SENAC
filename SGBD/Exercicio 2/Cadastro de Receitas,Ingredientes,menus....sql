/* Exercicio passado pela materia de SGBD pelo Professor Diogo Bortollini para inserir dados no banco de dados de receitas */
/* Selecionando banco de dados */
Use qtgostoso;

/* Inserindo dados dos tipos de cozinha */
insert into cozinha  
      values (1,"brasileira",1),
      (2,"mexicana",1),(3,"italiana",1),(NULL,"japonesa",1),
      (5,"Alemã",1),(6,"Francesa",1),(7,"Americana",1),(8,"Arabe",1),
      (9,"Australiana",1),(10,"Portuguesa",1);
/* Mostrando dados dos tipo de cozinha cadastrados no sistema */     
select * from cozinha;

/* Inserindo dados dos tipos de refeição */
insert into refeicao 
     values (1,"café da manhã",1),(2,"almoço",1),(3,"jantar",1),(4,"ceia",1),
     (5,"café da tarde",1), (6,"lanche",1),(NULL,"desjejum",1);
/* Mostrando dados dos tipo de refeição cadastrados no sistema */       
select * from refeicao;

/* Inserindo dados dos tipos de categoria */
insert into  qtgostoso.categoria (categoria,ativo) 
     values ("carnes",1),("sobremesa",1),("arroz, grãos e feijões",1),
     ("cookies, cereais e doces",1),("Bolos",1),("saladas",1),
     ("vegetariano e vegano",1),("grelhados e defumados",1),
     ("peixes e frutos do mar",1),("massas e pizzas",1),
     ("sanduíches",1),("entradas e finger foods",1),
     ("bolos, tortas e cupcakes",1),("Tipicos por região",1),("Internacional",1);
/* Mostrando dados dos tipos de categoria cadastrados no sistema */      
select * from categoria;

/* Inserindo dados dos tipos de menu */
insert into qtgostoso.menu (menu,descricao,ativo)
     values("Natal","Ceia de Natal",1),("Ano Novo","Virada do Ano",1),("São João","Festa Junina",1),
     ("Semana Santa","Corpus Criths",1),("Baiana","Delicias da Bahia",1),
     ("Gaucha","Delicias Gauchas",1),("Mineira","Delicias de Minas",1),("Carioca","Delicias Carioca",1),
     ("Goiana","Delicias de Goiania",1),("Portugal","Delicias de Portugal",1),("Alemão","Delicias da Alemanha",1),("Mexicano","Delicias do Mexico",1),
     ("Frances","Delicias da França",1),("Americano","Delicias Americanas",1),("Australiano","Delicias da Australia",1),
     ("Arabe","Delicias Arabe",1),("Italiana","Delicias da Italia",1),("Japonesa","Delicias do Japão",1);
/* Mostrando dados dos tipos de menu cadastrados no sistema */        
select * from menu;

/* Inserindo dados dos tipos de medida */
insert into qtgostoso.medida (medida,abreviacao,ativo)  
     values ("Xicara)","Xi",1),("Colher de sopa ","Cs",1),("Lata","Lt",1),
     ("gramas","gr",1),("mililitro","ml",1),("kilograma","kg",1),("colher de cha","Cc",1),
     ("pedaço","Pd",1),("jarra","Jr",1),("copo","c",1),("rodela","ro",1),("Xichara (chá)","Xc",1),
     ("Dente","De",1),("Maço","Mc",1),("Picada","Pi",1),("A gosto","Ag",1),("Litro","Lt",1),("Pacote","Pc",1);
 /* Mostrando dados dos tipos de medida cadastrados no sistema */     
 select * from medida;
 
 /* Inserindo dados dos Usuários */
 insert into qtgostoso.usuario (nome,email,data_nascimento,senha,genero,ativo,salt,inscrito,uuid)
      values("Vanessa Lee","vanessatlee@rhyta.com","1998-09-09","Vanessa2021",2,1,"7453214785","2015-04-14 17:45:45","6cc2f7d8-f02d-4e6f-9e22-b3c869c6e94f"),
      ("Renan Pereira","renanaraujopereira@gustr.com","1980-11-02","Renan2021",1,1,"25487576243","2015-04-14 19:01:30","27866bbc-993a-4ea0-aa63-98fe780d8d55"),
      ("Peter Wiles","peterswiles@rhyta.com","1990-01-21","Peter2021",1,1,"74525874521","2010-05-23 14:07:10","3753d29b-8b99-483b-8e5e-be6849717cc2 "),
      ("Stephnie Standley","stephniedstandley@dayrep.com","2000-07-20","Esthephnie2021",1,1,"12345645623","2018-04-14 09:24:55","b6e60557-b515-4cb4-b905-6bf6f044f31a"),
      ("Camila Carvalho","camilagoncalvescarvalho@armyspy.com","2001-11-02","Camila2021",2,1,"88698746321","2016-11-17 15:45:20","f296d40c-ea3c-43d4-bb64-620cd339aedf"),
      ("Cesar Thomas","cesarlthomas@teleworm.us","2002-01-01","Cesar2021",1,1,"1452365874","2020-07-30 11:14:01","b06b4c09-4b4d-409f-b8b8-c7c57053ba2d"),
      ("Douglas Costa","douglascunhacosta@dayrep.com","1992-06-30","Douglas2021",1,1,"996632147","2010-05-23 16:05:21","dc48d946-9f6e-4ec3-b073-406303774155"),
      ("John Hines","johnmhines@jourrapide.com","1995-08-31","John2021",1,1,"2224532147","2015-11-03 17:40:24","abf757f6-ff2a-4191-b788-46b92b53d59a"),
      ("Victor Ferreira","victorpereiraferreira@cuvox.de","1997-02-02","Victor2021",1,1,"4412352147","2015-04-14 12:00:10","d7d69a4b-0f8e-4097-b0aa-5dc927d54114 "),
      ("Anthony Prater","anthonymprater@rhyta.com","1985-11-05","Antony2012",1,1,"887456321","2012-07-17 20:02:17","46c120c2-7106-4948-97f9-5e2e0f4a40e3"),
      ("Arthur Cunha","arthuraraujocunha@rhyta.com","2000-06-25","Arthur2018",1,1,"2566674587125","2018-07-22 16:07:10","32883305-7c07-4aa3-9412-f752bbc0cbab"),
      ("Tânia Martins","taniasantosmartins@cuvox.de","1994-04-04","Tania2017",2,1,"3321478965412","2017-06-11 13:08:12","e6f1047f-f48c-4ebe-9d5f-56de5612484e"),
      ("James Mauro","jamesmmauro@armyspy.com","1980-09-14","James2012",1,1,"5574569215","2012-05-30 21:06:12","4fde198e-cb44-4fd3-a610-4d4499722390"),
      ("Christy Coney","christycconey@gustr.com","1990-01-21","Coney2016",1,1,"245698712367","2016-07-15 16:45:45","a33b3940-ae98-43c3-bbf3-013be08c522f"),
      ("Isabella Cavalcanti","isabellarochacavalcanti@superrito.com","1996-06-06","Isabela2015",2,1,"6532145879","2015-08-10 18:30:30","34463961-d2bb-4122-be92-7464d59acf16");
/* Mostrando dados dos Usuários cadastrados no sistema */          
select * from usuario;

/* Inserindo graus de dificudades */     
insert into dificuldade (dificuldade,ativo)
     values("Fácil",1),("Medio",1),("Dificil",1);
/* Mostrando os graus de dificuldade cadastrado no sistema */         
select * from dificuldade;    
     
/* Adicionando comidas típicas Brasileira*/        
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)
     values("Ximxim de Galinha","Comida tipica Brasileira com origem da Bahia",1,3     ),
     ("Acarajé","Comida tipica Brasileira com origem da Bahia",1,3,2),
     ("Cocada"," Um iguaria africana. Na época da escravidão, as negras faziam esse doce para os senhores e para isso usaram um ingrediente abundante na Bahia, o coco.",1,1,3),
     ("Pão de queijo","Iguaria Brasileira com origem Mineira",1,1,4),
     ("Arroz com pequi","Dez em cada dez goianos amam pequi. O fruto, que tem um  gosto marcante e esconde perigosos espinhos no miolo,  é controverso para quem não é 'do Goiás'",1,2,5),
     ("Biscoito de polvilho","O biscoito de polvilho salgado Globo é um dos símbolos da vida carioca. Crocante e leve, ele pode ser consumido a qualquer hora, mas é nas praias que ele faz mais sucesso.",1,2,6),
     ("Canjica, canjicão ou mugunzá","Esse prato é conhecido por três nomes, mas a receita é a mesma:  um doce feito com milho branco,  típico dos festejos de São João.",1,2,7),
     ("Churrasco","Prato que tem origem fora do Brasil – especula-se que surgiu no Uruguai e na Argentina – e que se espalhou por todo o país. Porém, são  os gaúchos que mais assimilaram o hábito  de comer",1,2,8),
     ("Costela ao fogo de chão","Tradição gaúcha, a costela ao fogo de chão também surgiu, pelo que conta a cultura popular, nos pampas quando os donos dos gados escolhiam para si as melhores partes de carne",1,1,9),
     ("Empadão goiano","A receita surgiu quando a cidade de Goiás ainda se chamava Vila Boa, há quase 150 anos",1,2,10),
     ("Vaca atolada", "Prato típico da comida caipira a base de carne bovina,é muito popular nos estados de São Paulo, Rio de Janeiro, Minas Gerais, Pernambuco, Paraíba e também no Piauí.",1,2,11);

/* Adicionando comidas típicas Portuguesa*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario) 	 
     values ("Bolinho de bacalhau","Os bolinhos de bacalhau são uma relíquia de Portugal. Crocantes por fora e macios por dentro, normalmente são servidos como entrada.",10,2,12),
     ("Alheira","é um embutido (como se fosse uma linguiça), é defumada e pode ser feita com carnes de caça, porco ou aves.",10,2,13),
     ("Arroz de pato"," É quase um risoto, feito com carne de pato que vai ao forno e é servido com chouriços por cima, mais uma delícia da culinária portuguesa.",10,2,14);
     
/* Adicionando comidas típicas Alemã*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario) 
     values( "Königsberger Klopse","É a tradicional almôndega alemã, herança dos tempos de Prússia que é até hoje bastante popular no norte do país, sobretudo na fronteira com a Polônia..",5,2,15),
     ("Bratapfel","O bratapfel é uma daquelas receitas alemãs tradicionais, que aproveita ingredientes populares no país e é servido como sobremesa no Natal.",5,2,1),
     ("Rote Grutze","é um doce com “sabor de Alemanha”, preparado com frutas vermelhas",5,2,2);

/* Adicionando comidas típicas Arabe*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)        
     values ("Kebab de Pernil com Molho de Hortelã","Um dos mais famosos itens da comida árabe é o Kebab, um tipo de espeto de carne e vegetais! Nesta versão você pode experimentá-lo com um toque refrescante da hortelã.",8,2,3),
     ("Quibe","Um outro clássico da culinária árabe é o quibe tradicional! Crocantinho e super fácil de fazer, não leva nem uma hora para ter um desses para toda família se deliciar.",8,2,4);

/* Adicionando comidas típicas do Mexixo*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)        
     values("Pozole","Esfiha de Escarola, além de saborosa, é equilibrada pela massa feita com de Cereal Matinal NESFIT Tradicional. ",2,2,5),
     ("Chilaquiles","As chilaquiles dão um toque especial para aquela considerada a refeição mais importante do dia: o café da manhã. ",2,2,6);
	 
/* Adicionando comidas típicas do Italiana*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)
     values ("Ravioli","É uma das comidas típicas da Itália que temos o costume de comer no Brasil. São mini pastéis recheados com diversos ingredientes. ",3,1,8),
     ("Lasagna","A Lasagna é uma das comidas típicas da Itália mais antigas. ",3,2,9),
     ("Struffoli","Essa é uma das comidas típicas da Itália que não é muito conhecida. Trata-se de um doce feito no Natal, principalmente em Nápoles.",3,2,10);

/* Adicionando comidas típicas do Japonesa*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)
     values ("Sushi","Esta típica comida japonesa é um bolinho de arroz enrolado com uma alga. ",4,2,11),
     ("Sashimi"," Sashimi significa carne perfurada (sashi= perfurada + mi= carne).",4,2,12);

/* Adicionando comidas típicas do Francesa*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)
     values ("Croque-Monsieur","O croque-monsieur nada mais é do que um misto quente mais elaborado. ",6,2,10),
     ("Crepe","Panquecas de massa fina são típicas da região noroeste do país chamada de Bretagne.A crepe é conhecida pelas opções de recheios doces.",6,2,11);
	 
/* Adicionando comidas típicas Americana*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)
     values ("Panquecas americanas "," As panquecas fazem parte das  comidas típicas dos estados unidos.Ela é bem tradicional no café da manhã e são completamente diferentes das que nós, brasileiros, estamos acostumados a comer no almoço ou no jantar. ",7,2,13),
     (" Hambúrguer","O hambúrguer, com toda a certeza, é uma das marcas registradas do país americano e é sinônimo de comida americana. ",7,2,14); 
     
/* Adicionando comidas típicas Australiana*/
insert into receita (titulo,descricao,idcozinha,iddificuldade,idusuario)
     values ("Pies (Tortas)"," Um dos pratos típicos da Austrália é a famigerada torta.  ",9,2,7),
     ("Damper","Acostumado com o pão francês daqui? Por lá você facilmente irá encontrar o clássico pão Damper. É um tipo de alimento muito simples e saboroso que cai bem em diferentes refeições, especialmente no café da manhã!.",9,2,15),
     (" Filé de atum grelhado","Além do filé de atum grelhado ser um alimento típico no país, a carne de peixe no geral é uma das mais consumidas pelos aussies.",9,2,1);
/* Mostrando todas as receitas cadastrado no sistema */           
select * from receita; 
    
/* Associando todas as categorias as receitas  */       
insert into categoria_receita (idcategoria,iidreceita) 
     values(1,1),(12,2),(4,3),(10,4),(3,5),(4,6),(4,7),(1,8),(1,9),(2,10),(1,11),(5,12),(8,13),(1,14),
     (1,15),(2,16),(4,17),(1,18),(12,19),(10,20),(12,21),(11,22),(12,23),(10,24),(4,25),(3,26),(9,27),(12,28),
     (4,29),(12,30),(11,31),(13,32),(10,33),(9,34);
/* Mostrando todas as categorias associadas as receitas  */      
select * from categoria_receita;
 
/* Associando todas as refeições as receitas  */     
insert into refeicao_receita (idrefeicao,idreceita) 
     values(2,1),(6,2),(6,3),(2,4),(6,5),(5,6),(1,7),(2,8),(2,9),(5,10),(2,11),(1,12),(2,13),(2,14),
     (2,15),(5,16),(1,17),(2,18),(6,19),(2,20),(1,21),(6,22),(2,23),(2,24),(6,25),(6,26),(6,27),(6,28),
     (5,29),(1,30),(6,31),(1,32),(1,33),(2,34);
/* Mostrando todas as refeições associadas as receitas  */       
select * from  refeicao_receita; 

/* Associando todos os Usuários as receitas  */
insert into  usuario_receita (idusuario,idreceita,comentario,nota)   
     values (1,1,"Bom",7),(2,2,"Bom",8),(3,3,"Otimo",9.5),(4,4,"Otimo",10),(5,5,"Bom",7),(6,6,"Bom",7.5),
     (7,7,"Ruim",4),(8,8,"Ruim",4),(9,9,"Bom",8),(10,10,"Otimo",10),(11,11,"Bom",8),(12,12,"Ruim",3),(13,13,"Bom",7),
     (14,14,"Otimo",10),(15,15,"Bom",8),(1,16,"Otimo",9.7),(2,17,"Bom",8),(3,18,"Otimo",10),(6,19,"Ruim",3),(4,20,"Ruim",3),
     (5,21,"Bom",8),(7,23,"Otimo",9),(8,24,"Bom",3),(9,25,"Bom",8),(10,26,"Bom",8),(11,27,"Bom",8),(12,28,"Bom",8),
     (6,29,"Otimo",10),(5,30,"Bom",8),(1,31,"Otimo",10),(2,32,"Bom",8),(3,33,"Bom",8),(4,34,"Bom",8);
/* Mostrando todos os Usuários associadas as receitas  */           
select * from  usuario_receita;

/* Associando os menus as receitas  */
insert into menu_receita  (idmenu,idreceita,descricao) 
     values (5,1,"Iguaria da Bahia"),(5,2,"Iguaria da Bahia"),(5,3,"Iguaria da Bahia"),(7,4,"Iguaria Mineira."),
     (9,5,"Iguaria Goaina"),(8,6,"Iguaria Carioca."),(3,7,"Iguaria típica dos festejos de São João."),(6,8,"Iguaria Gaucha"),
     (6,9,"Iguaria Gaucha"),(10,10,"Iguaria Goiana"),(9,11,"Iguaria Carioca"),(10,12,"Iguaria Portuguesa"),(10,13,"Iguaria Portuguesa"),
     (10,14,"Iguaria Portuguesa"),(11,15,"Iguaria Alemã"),(11,16,"Iguaria Alemã"),(11,17,"Iguaria Alemã"),
     (16,18,"Iguaria Arabe"),(16,19,"Iguaria Arabe"),(12,20,"Iguaria Mexicana"),(12,21,"Iguaria Mexicana"),
     (17,23,"Iguaria Italiana"),(17,24,"Iguaria Italiana"),(17,25,"Iguaria Italiana"),(18,26,"Iguaria Japonesa"),(18,27,"Iguaria Japonesa"),
     (13,28,"Iguaria Francesa"),(13,29,"Iguaria Francesa"),(14,30,"Iguaria Americana"),(14,31,"Iguaria Americana"),
      (15,32,"Iguaria Australiana"),(15,33,"Iguaria Australiana"),(15,34,"Iguaria Australiana");
/* Mostrando todos os menus associadas as receitas  */       
select * from  menu_receita ;

/* inserindo o modo de preparo das receitas  */
insert into preparo (instrucao,idreceita) 
     values("Xinxim de galinha: aqui, o primeiro passo é temperar a carne com alho amassado, caldo de limão, sal e pimenta. 
     Em seguida, esquente o azeite de dendê, coloque o frango e deixe refogar por vinte minutos. 
     Enquanto isso, bata a cebola, o coentro, a castanha, o gengibre e o amendoim em um liquidificador.
     Adicione a mistura ao refogado e deixe cozinhar em fogo médio até o frango ficar macio. Para finalizar, adicione o leite de coco e está pronto!",1),
     
     ("Em uma bacia grande, coloque o feijão e lave várias vezes, até sair toda a casca.
     Deixe de molho por 3 horas e então, bata tudo no liquidificador até forma uma pasta. Na hora de fritar, bater novamente com uma colher de pau até ficar bem fofinha.
     Deixa esquentar o dendê, com a colher de pau e uma de arroz, modele os bolinhos e frite-os no dendê.",2),
     
     ("Leve ao fogo baixo, o Leite MOÇA, o açúcar e o coco ralado, mexendo sempre até desprender do fundo da panela, cerca de 15 minutos.
     Despeje no mármore untado e nivele com um rolo de massas também untado. Deixe esfriar e corte em quadrados.",3),
     
     ("Em uma panela, ferva a água e acrescente o leite, o óleo e o sal.
     Adicione o polvilho aos poucos até dar liga. Pode ser que você não precise usar os 800g, então coloque devagar e sove a massa até soltar da mão: esse é o ponto.
     Quando a massa estiver morna, acrescente o queijo parmesão, os ovos e misture bem.
     Unte as mãos e enrole bolinhas de 2 cm de diâmetro.
     Disponha as bolinhas em uma assadeira untada com óleo, deixando um espaço entre elas.
     Asse em forno médio (180º C), preaquecido, por cerca de 40 minutos.",4),
     
     ("Coloque o pequi no óleo ou gordura fria (se usar o fruto inteiro, não é preciso cortar, mas cuidado com o caroço).
     Acrescente o alho e a cebola e deixe refogar em fogo baixo, mexendo sempre com uma colher de pau para não grudar na panela, e respingue um pouco de água quando for necessário.
     Quando o pequi já estiver macio e a água secado, acrescente o arroz e deixe fritar um pouco.
     Junte a água e o sal.
     Quando o arroz estiver quase pronto, coloque a pimenta de cheiro ou malagueta a gosto.
     Na hora de servir, polvilhe o arroz com salsa e cebolinha e um pouco de pimenta.",5),
     
     ("Em uma vasilha acrescente o polvilho, a água fervente e o óleo, misture bem e acrescente o sal a gosto.
     Adicione por último os ovos, um de cada vez, até obter uma massa consistente.
     Coloque a massa em um saquinho de confeiteiro e modele os biscoitos em uma forma (não é necessário untar a forma).
     Leve para assar em forno médio (180° C), preaquecido, por 25 minutos.",6),
     
     ("Em um pote deixe o 1/2 pacote de milho de molho por 2 horas.
     Coloque o milho em uma panela de pressão com os 2 litros de água e deixe cozinhar por 1 hora.
     Abra a panela e se o milho estiver mole esté cozido, se ainda estiver duro deixe cozinhar mais um pouco.
     Depois de cozido ainda na panela coloque o leite condensado, o leite, a canela e o cravo, deixe cozinhar por mais dez minutos.
     O Mungunzá fica uma delicia com pedacinhos de coco dentro..",7),
     
     ("Espetar de pedaço a pedaço no espeto, passar o sal e colocar no fogo. Mais ou menos a uma distancia de 25 cm.
     Se houver pressa ou muita fome, come-se somente chamuscada, meio a meio, correndo sangue (como eu gosto). Mas se não houver pressa e, tiver gente de muita frescura, assa-se até ficar esturicada.",8),
     
     ("Espete uma costela de aproximadamente 15 kg no espeto especial para esse tipo de costela.
     Jogue 500 ml de cachaça lavando muito bem toda a costela.
     Passe 2 kg de sal grosso por toda a costela esfregando e massageando e espere em torno de 25 minutos para colocar no meio das aleiras de lenha.
     Acenda o fogo sempre o mantendo com uma chama de aproximadamente 20 cm.
     Após7 horas dê uma conferida se já esta no seu ponto, mas lembre que costela sempre deve ser bem passada.
     Após a retirada bata todo o excesso de sal e sirva.",9),
     
     ("MASSA:Junte todos os ingredientes até formar uma massa homogênea.
     Deixe descansar por 30 minutos.
     Abra 70% da massa e forre uma assadeira.
     RECHEIO:Frite o alho, depois a cebola em um fio de azeite.
     Acrescente a lingüiça e deixe fritar até ficar dourada.
     Coloque o recheio na assadeira já forrada com a massa, cubra com o restante da massa.
     Leve ao forno pré-aquecido, a 200º, por 30 minutos.",10),
     
     ("Em uma panela de pressão frite as costelas em óleo até estarem douradas de todos os lados.
     Coloque o alho amassado e frite um pouco, em seguida frite a cebola, em fatias ou picada, como preferir.
     Acrescente bastante água, salgando a seu gosto.
     Cozinhe as costelas até que os ossos se soltem da carne, aproximadamente 40 minutos depois que pegou pressão.
     Retire as costelas, separando e descartando os ossos.
     Passe o caldo para uma panela grande.
     Acrescente a mandioca cozida e espremida, sem aquele fio que fica no meio.
     Coloque a carne e deixe cozinhar em fogo baixo por 15 minutos.
     Se ficar muito grosso, coloque mais água.
     Não pode ficar com o caldo nem ralo nem espesso demais.
     Salpique com o cheiro verde no momento de servir.",11),
     
     ("Numa panela com 1 colher de sopa de azeite, refogue meia colher de sopa de alho, 2 colheres de sopa de cebola picadinha até dourar.
     2. Transfira o refogado para numa tigela.
     3. Adicione 2 batatas médias cozidas e amassadas, 1 ovo batido, 200 gramas de bacalhau cozido e desfiado, um quarto de uma de xícara de chá de farinha de rosca, 1 colher de sopa de azeite, salsa picadinha, pimenta-do-reino moída, sal a gosto.
     4. Misture bem até formar uma massa homogênea.
     5. Pegue pequenas porções de massa, faça bolinhas e frite em óleo quente até dourar.
     6. Retire e escorra em papel absorvente.
     7. Sirva em seguida.",12),
     
     ("ASSADA:Perfure bem toda a pele da alheira com garfo, ou ponta de faca. Leve ao forno bem aquecido (alto) numa assadeira pequena por 15 minutos.
     Vire e deixe mais 15 minutos. Ela solta gordura e a pele normalmente fica crocante. 
     Pode ser feita no forninho elétrico, em função de tostar, virando para que toste por igual até o ponto.",13),
     
     ("Numa panela, em fogo alto e com 1 fio de óleo, doure 1 pato inteiro cortado nas juntas, sem a pele temperado com sal e pimenta-do-reino moída a gosto pingando água conforme for dourando o pato (+/- 10 minutos).
     2. Adicione 1 xícara (chá) de cebola picadinha e 2 dentes de alho picados e doure por mais 1 minuto. Incorpore 1 xícara (chá) de vinho tinto seco, 2 galhos de tomilho e alecrim, 2 folhas de louro e deixe evaporar o álcool. Despeje 2 litros de água fervente, tampe a panela e deixe cozinhar por 1 ½ hora.
     3. Com uma escumadeira, retire os galhos do tomilho e alecrim e os pedaços de pato da panela. Com um garfo, desfie a carne grosseiramente.
     4. Na panela com o caldo, junte 2 ½ xícaras (chá) de arroz parboilizado e leve ao fogo médio até o arroz cozinhar (+/- 15 minutos). Apague o fogo, junte o pato desfiado, salsinha e cebolinha picadas a gosto, misture bem.
     5. Em uma travessa de servir, coloque o arroz de pato e enfeite com rodelas de paio.",14),
     
     ("Amolecer o pão em água morna. Descascar e picar a cebola. Misturar a carne com o pão espremido, a cebola e um ovo. Temperar bem com sal e pimenta. Lavar as anchovas e picar bem. Acrescentá-las à carne e trabalhar tudo com as mãos, até obter uma massa homogênea.
     Numa panela, ferver água com sal. Formar almôndegas com a massa de carne e deixar cozinhando na água por cerca de 20 minutos.
     Derreter a manteiga numa panela e peneirar a farinha por cima. Mexer bem e acrescentar um pouco da água usada para cozinhar as almôndegas, até obter um molho cremoso. Ferver o molho por cerca de dez minutos, acrescentar as alcaparras e temperar com o limão, sal, açúcar e pimenta-do-reino.
     Separar a gema e a clara dos dois ovos restantes e bater as gemas com o creme de leite. Acrescentar ao molho. Servir as almôndegas com o molho de alcaparras, acompanhadas de arroz ou batatas cozidas.",15),
     
     ("Corte a parte de cima da maçã e retire o miolo. Fazendo um copinho com as maçãs. 
     E em seguida coloque 3 cravos dentro de cada maçã encha com o açúcar e coloque a canela em pó. Coloque as maçãs em um refratário e encha as maçãs com o vinho. Leve ao forno em 180 graus por 40 minutos.
     Retire do forno e coloque as frutas secas por cima e sirva com uma bola de sorvete de creme. 
     Algumas receitas levam também amêndoas e castanhas. Vale lembrar que existem muitas variações da receita. Algumas mais originais e outras menos.",16),
     
     ("Passe as frutas pelo liquidificador ou peneira.
     Numa panela, misture a maisena e o açúcar.
     Acrescente a água aos poucos, misturando bem.
     Junte o purê de frutas.
     Leve ao fogo e deixe levantar fervura, mexa sem parar.
     Deixe ferver, mexendo sempre por 1 minuto.
     Junte o suco de limão e mexa bem.
     Despeje numa vasilha ou em taças individuais.
     Cubra com filme plástico ou com papel alumínio.
     Leve a geladeira por 2 horas ou mais.
     Se desejar, sirva com creme de leite fresco levemente
     batido ou com creme inglês.",17),
     
     ("Em um recipiente, misture bem o pernil, o açúcar mascavo, o cominho, o sal e o suco de limão.
     Cubra com plástico-filme e deixe marinar em geladeira, por cerca de 1 hora.
     Em palitos para churrasco, espete os cubos de pernil, intercalando com o pimentão vermelho e a cebola roxa, finalizando com um pedaço de pernil.
     Em uma frigideira, coloque o azeite e doure todos os lados dos espetinhos.Reserve aquecido.
     Molho
     Em um recipiente, misture bem todos os ingredientes. Reserve.
     Montagem
     Em um prato, coloque dois Kebabs, um pouco de alface romana, pepino, molho e uma fatia de pão sírio. Sirva a seguir.",18),
     
     
     ("Coloque a farinha de trigo para quibe de molho por aproximadamente 3 horas, depois escorra e esprema a farinha de trigo.
     Misture a carne moída, a manteiga, a cebola picada, o sal, a pimenta e o hortelã, antes de fritar se preferir passe por um moedor ou processador antes de fritar.
     Enrole no formato de quibe e depois frite no óleo quente..",19),
     
     ("Cozinhe o milho em água durante 1 hora, mexendo de vez em quando para não grudar, até amaciar.
     Lave para tirar resíduos e a pele.
     Reserve.
     Cubra os pedaços de proco com a água e cozinhe com a cebola, o alho e o sal.
     Reserve a água do cozimento.
     Retire as sementes e cabinhos das pimentas.
     Cubra com água e cozinhe por 10 minutos.
     Bata no liquidificador com um pouco de água do cozimento, formando uma pasta.
     Salgue e coe.
     Aqueça o milho em 1,5 litro de água, junte a carne de porco e ferva.
     Junte o molho de pimenta, 2 colheres (sobremesa) de orégano, sal e cozinhe por mais 10 minutos em fogo baixo.",20),
     
     (" No liquidificador, faça o molho vermelho adicionando o tomate, o pimentão, a cebola e o alho e batendo bem até obter um purê;
     2. Em uma panela coloque o azeite, adicione o 'purê' formado no liquidificador e ferva por cerca de 5 minutos;
     3. Adicione à panela a cebola roxa, o frango desfiado e o caldo de frango, misture e deixe cozinhar por mais 5 minutos;
     4. Verifique o sal e corrija, se necessário;
     5. Para montar o prato, em um refratário alterne camadas de tortilhas com camadas do molho vermelho com frango;
     6. Finalize polvilhando queijo cheddar e leve o refratário ao forno preaquecido a 180º C apenas para gratinar;
     7. Sirva em seguida.",21),

     ("Faça primeiro o recheio.Coloque um pouco de óleo numa panela e refoque o alho e a cebola. Coloque a carne.
     Quando estiver quase pronta, coloque o tomate, um pouco de sal e por fim o cheiro verde a gosto.
     Se quiser, pode colocar um pouco de molho inglês. O tempero fica por sua conta. Deixe esfriando.
     Coloque para ferver uma panela com 3 a 4 litros de água. Tempere esta água com talos de salsa, dentes de alho e 1 cubo de caldo de galinha.
     Se gostar de manjericão, pode colocar algumas folhas para aromatizar esse caldo. Quando estiver fervendo, colocar 2 colheres de sopa de óleo. Deixe em fogo baixíssimo enquanto prepara os raviolis.
     PARA A MASSA:
     Coloque no processador os ingredientes.
     Se não tiver processador, pode fazer na mão. É só juntar todos os ingredientes e sovar.
     Passar a massa no cilindro até ficar bem fina. Colocar uma bolinha de recheio e fechar, cortando com a carretilha.
     Nem precisa grudar com nada. Se não tiver cilindro de abrir massa, pode abrir com o rolo até uma espessura bem fina. Coloque um pouquinho de recheio em cada pedaço, cubra com a massa e corte os quadrados com a carretilha. Não é preciso usar garfo, clara de ovo ou qualquer outra coisa para a massa grudar, pois a carretilha já fecha bem os raviolis.
     Coloque os raviolis prontos em forma polvilhada com farinha.
     Quando terminar, a água já estará fervendo.
     Cozinhe os ravioles em porções por 10 minutos. Escorra e coloque numa travessa. Despeje o molho bolognesa por cima, queijo ralado e pronto. Muito fácil e gratificante. Massa feita em casa, como da mamma.",23),
     
     ("Cozinhe a massa da lasanha em aproximadamente em 2 litros de água por 5 minutos.
     Em uma panela cozinhe a carne moída, depois de cozida coloque molho de tomate, o sal e temperos a gosto.
     Comece montando com uma camada de molho, a massa da lasanha, o presunto e o queijo
     Faça esse processo até tudo terminar.
     Aqueça o forno a 180º C durante 5 minutos.
     Coloque a lasanha no forno de 20 a 30 minutos.",24),
     
     ("Em uma tigela, misture o açúcar com a manteiga, a gema, o fermento, o leite e o Creme de Leite. 
     Acrescente a farinha de trigo e misture bem, até a massa ficar homogênea. Separe porções de massa e enrole cordões de cerca de 1 centímetro de diâmetro, sobre uma superfície enfarinhada. Corte pedaços de cerca 2 centímetros. Frite os pedaços de massa em bastante óleo quente e escorra em papel absorvente. Reserve.
     CALDA:
     Em uma panela média, misture bem o açúcar com o mel e meia xícara (chá) de água. 
     Deixe ferver por cerca de 3 minutos em fogo baixo, até formar uma calda homogênea. 
     Retire a panela do fogo e espere amornar. 
     Despeje a calda sobre os strufolis e polvilhe com o pistache e as raspas de tangerina.",25),
     
     ("Corte os pepinos e as cenouras em tiras e deixe em molho na água com uma pitada de sal.
     Faça o arroz temperado com o sal.
     Para o tempero do arroz misture tudo numa tigelinha ou copo.
     Transfira o arroz cozido para uma tigela grande.
     As poucos acrescente o molho de sushi, com a ajuda de uma colher de pau vire o arroz, sem mexer muito.
     Deixe esfriar.
     Forre a esteira para sushi com o plástico filme.
     Coloque folha de alga com a parte mais áspera para cima.
     Umedeça a palma das mãos para o arroz não grudar.
     Preencha a alga com uma camada de arroz de mais ou menos 1 cm uniformemente, comece pelo meio da alga e espalhe, lembrando sempre de deixar 1 cm de sobra da alga para ter uma finalização elegante.
     Após isso espalhe um um pouco de wassabi no centro do arroz de ponta a ponta, a quantidade e a gosto, lembrando que wassabi é forte, a quantidade de um grão de feijão é o suficiente, fica leve e dá um gostinho especial ao sushi.
     Coloque 1 tira de pepino, 1 de cenoura, 1 de salmão e 1 folha de alface.
     Enrole com o auxilio da esteira e com a ponta dos dedos como se fosse um rocambole, lembrando de tirar a esteira conforme a alga cola no arroz.
     No final passe um pouco de água na alga e cole na própria ficará perfeito.
     Mergulhe a faca no copo com água e corte em rolinhos em um único corte para não amassar o sushi, comece cortando pelo centro,assim eles ficarão da mesma altura.
     Coloque em uma travessa e decore a seu gosto.
     Servir com um pequeno prato de molho shoyu.",26),
     
     ("Corte a cebola em rodelas finas e forre o fundo da tigela
     Com a ajuda de uma faca bem afiada, filete o filé de tilápia em tiras bem finas, sempre no sentido da fibra do peixe. cubra as cebolas com o peixe.
     Espalhe o sal hinomoto por cima do peixe, e esprema dois limões sobre o recipiente com o peixe e a cebola.
     Rale a cenoura em tiras fininhas e cubra o peixe, faça o mesmo com o repolho.
     Cubra todos os ingredientes com shoyu ( use uma porção generosa dele).
     Por fim rale o gengibre (em um ralador fino, use uma sacola plastica no ralador pra não Espalhar fios no ralo) e salpique a gosto o gengibre sobre o prato com o peixe.
     Sirva em recipientes pequenos, misturando tudo, acrescentando mais limão, shoyu e gengibre ao gosto.",27),
     
      ("Em uma tigela junte os ovos com o creme de leite, o sal e a noz-moscada.
      Misture bem até formar um creme homogêneo. Reserve.
      Em uma assadeira coloque 8 fatias de pão de forma e passe metade do creme por cada uma das fatias até que fiquem bem úmidas.
      Coloque por cima as fatias de presunto e o queijo ralado.
      Cubra com as fatias de pão restante, e por cima coloque a outra metade do creme e cubra com mais queijo ralado.
      Leve ao forno pré-aquecido até que o queijo derreta ou até que doure.",28),
     
     ("Bata no liquidificador todos os ingredientes por 30 segundos.
     Despeje uma concha da massa e distribua sobre uma frigideira untada com óleo 
     Ainda no fogo, recheie o crepe com os ingredientes de sua preferência.
     Dobre a massa ao meio e sirva.",29),
     
     ("Misture em um recipiente: a farinha, o açúcar, o fermento e o sal.
     Em outro recipiente, misture os ovos, o leite e a manteiga.
     Acrescente os líquidos aos secos, sem misturar em excesso.
     O ponto da massa não deve ser muito líquido, deve escorrer lentamente.
     Aqueça e unte a frigideira com óleo, coloque a massa no centro, cerca de 1/4 xícara por panqueca.
     Vire a massa para assar do outro lado e está pronto!",30),
     
     ("Misture todos os ingredientes muito bem e amasse para que fique tudo muito bem misturado.
     Faça porções de 90 g a 100 g.
     Forre um plástico molhado em uma bancada e modele os hambúrgueres utilizando um aro como base.
     Faça um de cada vez e retire o aro logo em seguida.
     Forre uma assadeira de metal com plástico, coloque os hambúrgueres e intercale camadas de carne e plásticos (sem apertar).
     Faça no máximo 4 camadas por forma e leve para congelar.
     Retire do congelador, frite ou asse e está pronto.",31),
     
     ("1. Esquente o azeite e refogue a cebola. Acrescente a carne moída e deixe cozinhar um pouco
     2. Salpique a farinha de trigo sobre a carne, e sem parar de mexer, acrescente o molho de tomate, o molho inglês e o caldo de carne. Ainda em fogo alto espere borbulhar e depois reduza a temperatura e mexa uma vez ou outra até engrossar o molho.
     3. Acrescentar a salsa, sal e pimenta do reino a gosto.
     4. Retire do fogo e espere esfriar completamente.
     5. Prepare a forma colocando a massa folhada na base e nas laterais.
     6. Acrescente o recheio e cubra com mais massa folhada.
     7. No forno pré-aquecido a 200 graus deixe a torta assar por 10 minutos, abaixe a temperatura por 180C e deixe por mais 20 minutos.",32),
     
     ("Pré aqueça o forno a 200°C. Prepare uma forma média com papel manteiga e um pouco de óleo, ou com óleo e um pouco de farinha
     Em uma tigela grande coloque a farinha, o fermento (se a farinha for sem fermento) e o sal. Coloque a manteiga e com os dedos misture até que a mistura pareça um farelo. Adicione a água e misture bem com a ajuda de uma faca.
     Coloque mais 1 ou 2 colheres de água se a mistura estiver muito seca.
     Coloque a massa em uma superfície enfarinhada e sove por 1 a 2 minutos, até que a massa fique lisa.
     Faça uma bola de mais ou menos 18cm e coloque na forma. Pegue uma faca, coloque um pouco de farinha e com essa faca faça cortes em cima da massa, fazendo 8 divisões.
     Polvilhe um pouco de farinha por cima do pão e asse por aproximadamente 30 minutes ou até parecer cozido (se você bater na casca deve fazer um som oco).
     Transfira para uma grelha para esfriar um pouco. Sirva morno ou em temperatura ambiente.",33),
     
     ("Misture os temperos em um recipiente e deixe durante 1/2 hora.
     Pincele os filés de atum com óleo de oliva e tempere com sal e pimenta preta.
     Grelhe dos dois lados, durante aproximadamente 5 minutos, ou até que estejam cozidos a gosto.
     Molho
     Em uma panela, aqueça o óleo de oliva e frite as achovas até que comecem a dissolver.
     Acrescente as alcaparras com cuidado, abaixe o fogo e adicione o vinagre balsâmico.
     Deixe cozinhar em fogo brando durante 1 a 2 minutos.
     Para servir, coloque o filé de atum em uma travessa com um pouco de agrião.
     Coloque uma colher (sopa) do molho 1 no agrião.
     Derrame o vinagre balsâmico aquecido (molho 2) sobre o atum, e enfeite com manjericão.",34);   
/* Mostrando o modo de preparar todas as receitas cadastradas no sistema  */     
select * from  preparo ;     
     
/* Inserindo os ingredientes usado nas receitas */     
insert into ingrediente (nome,ativo) 
     values("Frango",1),("Amendoim torrado e moido",1),("Castanha de Cajú",1),("Azeite de dendê",1),("Suco de Limão",1),("Gengibre",1),
     ("Pimenta do Reino",1),("Camarão seco",1),("Alho",1),("Coentro",1),("Cebola",1),
     ("Leite de coco",1),("Sal",1),("Feijão Fradinho",1),("Leite condensado",1),("Açúcar",1),("Coco seco ralado",1),
     ("Polvilho azedo",1),("Água quente",1),("Leite",1),("Óleo",1),("Ovos",1),("Queijo parmesão ralado",1),("Banha de porco",1),
     ("Pequi",1),("Arroz",1),("Pimenta de cheiro",1),("Salsinha a gosto",1),("Cebolinha a gosto",1),("Milho para canjica",1),("Canela em pau",1),("Cravos",1),
     ("Costela",1),("Picanha",1),("Cachaça",1),("Farinha de Trigo",1),("Fermento em pó",1),("Manteiga",1),("Linguiça",1),("Queijo minas",1),("Guariroba",1),("Azeitonas",1),("Caldo de Frango",1),("Cetchup",1),
     ("Mandioca cozida",1),("Cheiro verde",1),("Batata",1),("Bacalhau",1),("Farinha de Rosca",1),("Pimenta do reino",1),("Pato temperado",1),("Vinho tinto",1),
     ("Tomilho e alecrim",1),("Folhas de louro",1),("Paio",1),("Pão novo",1),("Carne Moida",1),("Anchovas",1),("Orégano seco",1),("Creme de leite",1),("Maça",1),
     ("Canela em pó",1),("Vinho",1),("frutas secas",1),("Sorvete Creme",1),("Morango",1),("Maisena",1),("Pernil",1),("Cominho",1),("Pimentão vermelho",1),("Cebola roxa",1),
     ("Iorgute Nestle",1),("Raspa casca de limão",1),("Folha de Hortelã",1),("Tahine",1),("Milho choclo",1),("Chiles Guajilos",1),("Alface",1),("Rabanete picado",1),("Tomate",1),("Queijo cheddar",1),
     ("Massa de Lasanha",1),("Presunto",1),("Queijo mussarela",1),("Extrato de tomate",1),("Gema",1),("Mel",1),("Pistache picado",1),("Raspas de tangerina",1),("Arroz japonês",1),("Vinagre de arroz" ,1),
     ("Algas desidratadas ",1),("Pepinos",1),("Cenoura",1),("Salmão",1),("Saquê doce mirin",1),("Wasabi",1),("Tilápia",1),("Repolho",1),("Sal Himoto",1),("shoyu",1),("Limão rosa",1),("Baunilha",1),
     ("Bacon moído",1),("Molho inglês",1),("Água ",1),("Sal grosso",1),("Azeite",1),("Queijo gruyère ou ementhal ralado grosso",1),("Noz-moscada e sal a gosto",1),("Filés de atum ",1),("Manjericao",1);
/* Mostrando os ingredientes usados pelas receitas cadastradas no sistema  */       
select * from ingrediente;  

/* Associando os ingredientes com as receitas,medidas e quantidade  */   
insert into ingrediente_receita (idingrediente,idreceita,idmedida,quantidade)
     /* Ingredientes e medidas  da receita Xinxim de Galinha */    
     values (1,1,6,2),(2,1,12,1/2),(3,1,1,1/2),(4,1,1,1/2),(5,1,2,2),(6,1,2,1),(7,1,7,1),
     (8,1,6,250),(9,1,13,4),(10,1,14,1/2),(11,1,15,2),(12,1,12,1),(13,1,16,null),
     
     /* Ingredientes e medidas  da receita Acarajé */    
     (14,2,6,1),(11,2,4,300),(6,2,7,1),(9,2,8,1),(13,2,7,1),(4,2,17,1),
     
     /* Ingredientes e medidas de Cocada */    
     (15,3,3,1),(16,3,2,4),(17,3,4,100),
     
     /* Ingredientes e medidas  da receita Pão de Queijo */    
     (18,4,4,800),(19,4,1,1),(20,4,1,1),(21,4,1,1/2),(22,4,null,2),(23,4,4,100),(13,4,16,null),
    
    /* Ingredientes e medidas  da receita Arroz com Pequi*/    
	(21,5,12,1/4),(25,5,17,1/2),(9,5,13,2),(11,5,15,1),(26,5,12,2),(19,5,12,4),(13,5,16,null),(27,5,16,null),(28,5,16,null),
    
    /* Ingredientes e medidas  da receita Biscoito de Povilho*/    
    (18,6,4,500),(19,6,5,200),(21,6,5,150),(22,6,null,5),(13,6,16,null),
    
    /* Ingredientes e medidas  da receita Canjica,Munguzá */    
    (30,7,18,1/2),(19,7,17,2),(20,7,8,1),(15,7,3,1),(31,7,8,null),(32,7,null,5),
    
    /* Ingredientes e medidas  da receita Churrasco */    
    (34,8,8,null),(107,8,16,null),
    
    /* Ingredientes e medidas  da receita Costela ao fogo de chão */    
    (33,9,6,15),(107,9,6,2),(35,9,5,500),
    
    /* Ingredientes e medidas  da receita Empadão goiano */    
    (36,10,12,4),(22,10,null,3),(21,10,12,1/2),(13,10,16,null),(37,10,7,1),(38,10,2,2),(1,10,4,300),(39,10,8,2),(40,10,4,150),
    (41,10,4,150),(42,10,4,50),(9,10,13,1),(11,10,15,1),(27,10,16,null),(43,10,5,250),
    
    /* Ingredientes e medidas  da receita Empadão Vaca Atolada */    
    (33,11,6,1),(45,11,4,500),(9,11,16,null),(46,11,null,null),
    
    /* Ingredientes e medidas  da receita Bolinho de bacalhau */    
    (108,12,2,2),(9,12,2,1/2),(11,12,2,2),(47,12,null,2),(22,12,null,1),(48,12,4,200),(49,12,4,30),(28,12,16,null),
    (50,12,16,null),(13,12,16,null),
    
    /* Ingredientes e medidas  da receita Alheira */    
    (39,13,null,1),(36,13,2,2),(21,13,1,1),
    
    /* Ingredientes e medidas  da receita Arroz de pato*/    
    (21,14,7,1),(51,14,16,null),(11,14,4,200),(9,14,13,2),(52,14,1,1),(53,14,8,2),(54,14,null,null),(19,14,8,2),(26,14,12,2.5),
    (55,14,11,1),(29,14,16,null),
    
    /* Ingredientes e medidas  da receita Königsberger Klopse*/    
    (56,15,null,1),(11,15,null,null),(57,15,4,600),(22,15,null,3),(13,15,16,null),(7,15,16,null),(58,15,null,4),(38,15,4,50),(36,15,4,50),
    (5,15,null,null),(16,15,null,null),(60,15,5,100),
    
    /* Ingredientes e medidas  da receita Bratapfel*/    
    (61,16,null,6),(16,16,4,200),(62,16,4,50),(32,16,null,null),(63,16,null,null),(64,16,null,null),(65,16,null,null),
    
    /* Ingredientes e medidas  da receita Rote Grutze*/    
    (66,17,4,600),(67,17,12,1/4),(16,17,2,4),(106,17,12,1/2),(5,17,2,1),
    
    /* Ingredientes e medidas  da receita Kebab de Pernil com Molho de Hortel*/    
    (68,18,4,400),(16,18,2,1),(69,18,7,1/2),(13,18,7,1),(5,18,null,1),(70,18,null,1/2),(71,18,null,1),(108,18,2,1),(72,18,3,1),
    (73,18,null,2),(13,18,null,1),(74,18,12,1/2),(75,18,2,1/2),
    
    /* Ingredientes e medidas  da receita Quibe*/    
    (57,19,6,1),(36,19,6,1),(38,19,2,2),(11,19,null,2),(13,19,16,null),(7,19,16,null),(74,19,16,null),
    
    /* Ingredientes e medidas  da receita Pozole*/    
    (76,20,4,500),(106,20,17,2.5),(11,20,null,1/2),(9,20,13,3),(68,20,4,500),(59,20,4,90),(77,20,null,6),
    (11,20,12,1),(78,20,8,1/2),(79,20,12,1/2),(5,20,null,5),(13,20,16,null),
    
    /* Ingredientes e medidas  da receita Chilaquiles*/    
    (1,21,null,1),(11,21,15,1/2),(9,21,13,2),(85,21,3,2),(70,21,15,1),(30,21,12,4),(81,21,4,150),
    (71,21,8,1),(28,21,2,2),(1,21,12,1),(21,21,2,1),(13,21,16,null),
    
    /* Ingredientes e medidas  da receita Ravioli*/    
    (36,23,4,200),(22,23,null,2),(13,23,null,1),(57,23,4,50),(9,23,null,null),(11,22,null,null),(80,23,null,null),
    (46,23,null,null),(57,23,4,50),(85,23,null,null),
    
    /* Ingredientes e medidas  da receita Lasagna*/    
    (82,24,null,1),(83,24,4,500),(84,24,4,500),(57,24,4,500),(85,24,null,1),(13,24,16,null),(50,24,16,null),
    (59,24,16,null),
    
    /* Ingredientes e medidas  da receita Struffoli*/    
    (16,25,2,2),(38,25,2,2),(86,25,null,1),(37,25,7,1),(60,25,12,1/2),(36,25,1,2/5),(21,25,null,null),
    (87,25,2,1),(88,25,1,1/2),(89,25,2,1),
    
    /* Ingredientes e medidas  da receita Sushi*/    
    (90,26,1,4),(19,26,1,5),(91,26,2,4),(92,26,8,2),(93,26,null,2),(94,26,null,2),(95,26,8,null),
    (78,26,null,null),(96,26,2,2),(16,26,2,2),(13,26,2,2),(97,26,null,null),
    
    /* Ingredientes e medidas  da receita Sashimi*/    
    (98,27,4,500),(19,26,1,5),(91,26,2,4),(92,26,8,2),(93,26,null,2),(94,26,null,2),(95,26,8,null),
    (78,26,null,null),
    
    /* Ingredientes e medidas  da receita CROQUE MONSIEUR*/    
    (56,28,8,16),(22,28,null,2),(60,28,4,300),(83,28,8,null),(109,28,null,null),(110,28,16,null),
    
    /* Ingredientes e medidas  da receita Crepe*/    
    (36,29,12,1),(20,29,12,1/4),(22,29,null,1),(103,29,null,10),(13,29,null,1),
    
    /* Ingredientes e medidas  da receita Panquecas americanas*/    
    (36,30,12,1/4),(16,30,2,1),(37,30,7,3),(22,30,null,2),(20,30,12,1),(38,30,2,2),(13,30,null,1),
    (21,30,null,null),
       
    /* Ingredientes e medidas  da receita Hambúrguer*/    
    (57,31,6,3),(104,31,4,300),(22,31,null,1),(36,31,2,3),
    
    /* Ingredientes e medidas  da receita Pies (Tortas)*/    
    (108,32,null,null),(11,32,15,1),(57,32,4,300),(36,32,2,2),(85,32,1,1/3),(105,32,2,1),(57,32,1,1),
    (28,32,2,2),(13,32,16,null),
    
    /* Ingredientes e medidas  da receita Damper*/    
    (36,33,1,3),(13,33,2,1/2),(38,33,2,5.5),(106,33,1,3/4),
    
    /* Ingredientes e medidas  da receita Filé de atum grelhado*/    
    (111,34,null,6),(80,34,15,4),(71,34,15,1),(27,34,15,1),(9,34,13,3),(112,34,null,1/2),(5,34,16,1),
    (21,34,null,2);
/* Mostrando a associação dos os ingredientes com as receitas,medidas e quantidade  */   
select * from  ingrediente_receita  ; 

     
