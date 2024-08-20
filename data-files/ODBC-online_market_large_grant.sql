CREATE USER stat;
CREATE DATABASE online_market;
USE online_market;
GRANT ALL ON online_market TO stat;

###################################################
# region
###################################################
CREATE TABLE region(
	name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500)
);

GRANT ALL ON region TO stat;

INSERT INTO region VALUES('Sicilia','La Sicilia, ufficialmente denominata Regione siciliana, è una regione italiana autonoma a statuto speciale di 4780210 abitanti, con capoluogo Palermo');
INSERT INTO region VALUES('Italy',NULL);
INSERT INTO region VALUES('Piemonte','Il Piemonte è una regione italiana che confina con la Francia e la Svizzera, situata ai piedi delle Alpi. È conosciuta per la cucina raffinata e per i vini, come il Barolo. Il capoluogo è Torino.');
INSERT INTO region VALUES('Campania',NULL);
INSERT INTO region VALUES('Calabria',NULL);

###################################################
# producer
###################################################
CREATE TABLE producer(
	name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(2000)
);

GRANT ALL ON producer TO stat;

INSERT INTO producer VALUES('Alicos','L''Azienda Agricola Alicos è nata per valorizzare al massimo la produzione siciliana, soprattutto quella che caratterizza l''area di Salemi, dove si trova il primo sito produttivo dell''azienda. Oltre a produrre pregiato olio d''oliva, realizza anche conserve preparate osservando la più antica tradizione siciliana, con un''attenta selezione delle materie prime e con l''utilizzo dell''ottimo olio extravergine che regala un sapore unico.');
INSERT INTO producer VALUES('VIVA by Viviana Varese','VIVA: ristorante stellata di Viviana Varese. Viviana nasce a Salerno da una famiglia di ristoratori ed esordisce come pizzaiola a soli 7 anni. A 21 segue il primo stage al ristorante Mediterraneo di Piacenza dove affianca lo chef formatosi alla Cascina Rossa, storico locale del golfo di Napoli e acquisisce le prime basi di cucina mediterranea e pasticceria. Segue lo stage con Gualtiero Marchesi, due stelle Michelin, dal quale apprende dal Maestro l''organizzazione di un grande ristorante. Il suo debutto avviene il 29 maggio 1999: nasce Girasole il suo primo ristorante a Lodi. Poi avviene l''incontro con Sandra Ciciriello che da'' il via nel 2007 a ALICE. Aprono infatti a Milano e nel 2011 arriva la prima stella Michelin che premia una cucina il cui protagonista è soprattutto il pesce, scelto personalmente da Sandra. Nel 2019, poi, Alice ha cambiato nome ed è diventata VIVA, acronimo di Viviana Varese, in cui la chef esprime tutta sè stessa.');
INSERT INTO producer VALUES('Caffarel','Caffarel nasce nel 1826, quasi 200 anni fa, quando il cioccolato era una specialità esotica, irraggiungibile: pochi in Europa ne avevano sentito parlare e ancora meno l’avevano assaggiato. Nel 1826 Paul Caffarel aprì la sua bottega a Torino, che anche grazie a lui è diventata una capitale del cioccolato. Ma in quegli anni di guerre continue in Europa il cacao è merce rara. Così nasce il Gianduiotto, la più straordinaria invenzione Caffarel e una delle più memorabili specialità nel mondo del cioccolato: unendo al cacao le nocciole Piemonte tostate. Caffarel si definisce oggi come creatore di cioccolato e di piaceri, inventore del gianduiotto, cultura torinese del cioccolato.');
INSERT INTO producer VALUES('Scyavuru','Le aziende agricole Scyavuru si fondano sulla passione siciliana per la terra e i suoi frutti. sull''amore per un patrimonio culturale inestimabile. e sull''attenzione alle tradizioni più antiche. Scyavuru è infatti un termine del dialetto siciliano che significa fragranza. profumo. Ed è proprio a partire dal laboratorio aziendale dei sapori che si producono i prodotti più buoni. cercando di abolire il maggior numero di passaggi della filiera distributiva per offrire al consumatore la freschezza di un alimento genuino e prodotto in armonia con la natura. Le ricette seguite sono quelle della tradizione più antica. abbinate ad una costante spinta innovativa che consente di soddisfare anche i gusti più moderni.');
INSERT INTO producer VALUES('Agrimontana','Agrimontana nasce nel 1972 a Borgo San Dalmazzo (CN). Presto divenuta leader nel settore della frutta candita e dei marroni in particolare, la cui qualità è offerta ai consumatori, ai pasticcieri e agli chef. I marroni sono selezionati nei posti del Piemonte che soli al mondo sono in grado di garantire le superbe caratteristiche degli aromi e dei sapori che li rendono inimitabili. Le geleès di frutta sono senza aromatizzanti o coloranti aggiunti. ');
INSERT INTO producer VALUES('La Talpina','Sara e Franco Bignante, nel loro laboratorio di Genola (CN), producono le più tipiche specialità locali nel rispetto delle ricette tradizionali. L''azienda La Talpina offre infatti prodotti in grado di far riscoprire il sapore delle cose buone di una volta, realizzate nel rispetto dei valori familiari.');
INSERT INTO producer VALUES('Afeltra','ll Premiato Pastificio Olimpio Afeltra è stato fondato nel 1848 e si trova proprio nel cuore di Gragnano. In un palazzo monumentale di inizio 800 si producono quotidianamente 50 quintali di pasta nel totale rispetto del metodo artigianale. Arrivano le migliori semole di grano duro che vengono analizzate ad ogni consegna per verificare che abbiano le caratteristiche di eccellenza richieste per proteine, glutine e ceneri. Impasto e preimpasto avvengono sottovuoto, in modo lentissimo e utilizzando la purissima acqua dei Monti Lattari di Gragnano. La trafilatura è unicamente a bronzo e l''essiccazione dura da 24 a 52 ore, a seconda dei formati, con temperature che non superano mai i 48 gradi.');
INSERT INTO producer VALUES('Campisi','L''azienda Campisi nasce a Marzamemi, piccolo e incantevole borgo marinaro vicino a Siracusa, nel 1854. Da allora si dedica artigianalmente alla lavorazione e conservazione, rigorosamente a mano, con tecniche di origine antica, del pesce fresco selezionato nel Mar Jonio e Mediterraneo. Oltre alle conserve di pesce, l''azienda produce e seleziona anche spezie, sali e aromi, conserve di verdura, miele e dolci, con l''obiettivo di promuovere e salvaguardare i sapori dell''antica tradizione siciliana.');
INSERT INTO producer VALUES('Crispino','La famiglia Crispino sono dei produttori di specialità calabresi dal 1979. Le ricette affondano le radici nel patrimonio gastronomico calabrese, con materie prime selezionate e lavorate dal fresco. I sapori di questi prodotti sono il risultato della passione che la famiglia professa per le proprie tradzioni, dell''amore che nutrono per le propria terra e per il rispetto che hanno dei suoi frutti.');
INSERT INTO producer VALUES('Pastificio Vallebelbo','Il Pastificio Vallebelbo s.n.c. è un laboratorio artigianale che nasce nel cuore delle Langhe con l''obiettivo di realizzare prodotti di qualità coniugando esperienza, passione, gusto e voglia di cose buone. L''azienda è profondamente legata al territorio in cui è nata e si è sviluppata e cerca attraverso i suoi prodotti di valorizzare la tradizione della cucina tipica locale, anche se integrata con le tecnologie più moderne nel rispetto delle norme vigenti. La produzione si concentra sulla pasta fresca, gustosa e leggera, che trasmette tutti i sapori, i gusti e i profumi caratteristici del territorio piemontese.');
INSERT INTO producer VALUES('Plin Alciati','Plin Alciati è un laboratorio artigianale che nasce nel cuore delle Langhe con l''obiettivo di realizzare prodotti di qualità coniugando esperienza, passione, gusto e voglia di cose buone. L''azienda è profondamente legata al territorio in cui è nata e si è sviluppata e cerca attraverso i suoi prodotti di valorizzare la tradizione della cucina tipica locale, anche se integrata con le tecnologie più moderne nel rispetto delle norme vigenti. La produzione si concentra sulla pasta fresca, gustosa e leggera, che trasmette tutti i sapori, i gusti e i profumi caratteristici del territorio piemontese.');

###################################################
# sheet
###################################################
CREATE TABLE sheet(
	ID CHAR(5) PRIMARY KEY,
    description VARCHAR(2000),
    region_name VARCHAR(30),
    producer_name VARCHAR(30),
    FOREIGN KEY (region_name) REFERENCES region(name),
    FOREIGN KEY (producer_name) REFERENCES producer(name)
);

GRANT ALL ON sheet TO stat;

INSERT INTO sheet VALUES('001','Crema di Pistacchio in Tubetto di Alicos: una morbidissima crema al pistacchio, buona e golosa, da oggi ancora più comoda nel formato a tubetto.
Il pistacchio è senza dubbio tra la frutta secca più amata in assoluto, grazie al suo sapore avvolgente e goloso e al suo colore davvero inconfondibile. Utilizzando solo i migliori pistacchi Alicos realizza una crema dolcissima, perfetta per realizzare merende e colazioni gustose.','Sicilia','Alicos');
INSERT INTO sheet VALUES('002','Spalmabile al Cioccolato Fondente di VIVA by Viviana Varese: una crema spalmabile al cioccolato fondente dalla consistenza avvolgente e cremosa, perfetta per dare un pizzico di dolcezza in più alla tua giornata.
Le creme spalmabili al cioccolato e nocciole sono un grande classico delle colazioni e delle merende all''italiana, uno di quei prodotti a cui è praticamente impossibile resistere. Questa, poi, è una delizia davvero unica perché proviene direttamente dalle cucina di un ristorante stellato: realizzata dai ragazzi di VIVA che scelgono esclusivamente le migliori materie prime, è una crema spalmabile come non l''hai mai assaggiata.','Italy','VIVA by Viviana Varese');
INSERT INTO sheet VALUES('003','Spalmabile alla Gianduia di VIVA by Viviana Varese: una crema dal gusto avvolgente e dalla consistenza morbidissima, perfetto per iniziare la giornata con la giusta dose di dolcezza.
Una deliziosa crema realizzata dai ragazzi di VIVA che scelgono esclusivamente le migliori materie prime, è una crema spalmabile come non l''hai mai assaggiata. Dolce, morbida e gustosa: l''ideale per i veri appassionati di cioccolato.','Italy','VIVA by Viviana Varese');
INSERT INTO sheet VALUES('004','Crema Spalmabile al Pistacchio di VIVA by Viviana Varese: una crema morbida e golosa alla quale sarà davvero difficile resistere, perfetta per una colazione o una merenda con cui fare il pieno di energia. Ormai si sa, il pistacchio è un frutto secco in grado di far diventare golosa qualsiasi pietanza, dolce e salata, ma la crema spalmabile al pistacchio è davvero uno dei prodotti più riusciti. Facile da spalmare su pane e fette biscottate, viene realizzata dai ragazzi di VIVA con ingredienti di primissima scelta, che ti permetteranno di portare in tavola un prodotto davvero eccezionale.','Italy','VIVA by Viviana Varese');
INSERT INTO sheet VALUES('005','Spalmabile alla Mandorla di VIVA by Viviana Varese: una crema spalmabile dal sapore delicato e dolce con cui guarnire i tuoi dolci e le tue crostate, ma perfetta anche da mangiare in semplicità sulle fette biscottate.
La crema alla mandorla è una spalmabile originale e leggermente diversa rispetto alle versioni più tradizionali e conosciute, ma che ne condivide la morbidezza e il sapore avvolgente. La mandorla, poi, è un frutto che si presta spesso in preparazioni di pasticceria e che risulta sempre un ingrediente di successo nelle ricette più svariate, e anche questa crema spalmabile non costituisce un''eccezione.','Italy','VIVA by Viviana Varese');
INSERT INTO sheet VALUES('006','Spalmabile Arachidi e Cacao di VIVA by Viviana Varese: una crema dal gusto avvolgente e dalla consistenza incredibilmente morbida che unisce due degli ingredienti più amati in assoluto.
Le creme di arachidi e le creme di cacao sono tra le spalmabili più conosciute e apprezzate, e in questo prodotto si uniscono alla perfezione, creando un risultato dolcissimo e davvero gustoso. Realizzato dai ragazzi di VIVA, ristorante stellato, a partire da ingredienti accuratamente selezioni e seguendo un processo di lavorazione attento e curato.','Italy','VIVA by Viviana Varese');
INSERT INTO sheet VALUES('007','Burro di Arachidi di VIVA by Viviana Varese: una salsa cremosa e dal sapore avvolgente perfetta ogni volta che ti vorrai concedere una coccola.
Il burro d''arachidi è un prodotto molto amato e diffuso soprattutto nella cultura americana, che i ragazzi della gastronomia di VIVA realizzano in modo semplice e naturale, utilizzando come ingredienti solo arachidi e sale. In questo modo il burro non è più solo una crema buonissima e golosa, ma anche un prodotto nutriente e salutare perfetto per fare il pieno di energie durante la giornata.','Italy','VIVA by Viviana Varese');
INSERT INTO sheet VALUES('008','Cremosa Gianduia di Caffarel: il segreto dei pasticceri professionisti direttamente a casa tua, sempre a portata di mano.
Realizzata coi migliori ingredienti, Cremosa gianduia di Caffarel è un vero capolavoro italiano che racchiude tutta l’intensità del cacao e la delicatezza delle nocciole italiane tostate ad arte. Morbida e buonissima, questa crema spalmabile grazie al suo pratico formato è semplice da utilizzare e ti permetterà di creare delle vere delizie in cucina, tutte da assaporare.','Piemonte','Caffarel');
INSERT INTO sheet VALUES('009','La crema al limone di Scyavuru morbida e vellutata come non mai, poterà sulla tua tavola l''inebriante profumo dei limoni siciliani.
Una deliziosa alternativa alla marmellata, più omogenea e morbida capace di conquistare i palati più esigenti perché preparata solo con frutta e ingredienti di prima qualità.','Sicilia','Scyavuru');
INSERT INTO sheet VALUES('010','La crema all''arancia di Scyavuru nasce dal frutto più rappresentativo della Sicilia, che si trasforma in una crema spalmabile dal gusto e dalla consistenza davvero unici.
Ha un sapore dolce e leggermente acidulo, tipico dei migliori agrumi selezionati e raccolti al giusto punto di maturazione, è morbida e vellutata grazie all''aggiunta di latte.
','Sicilia','Scyavuru');
INSERT INTO sheet VALUES('011','Per la realizzazione di questa deliziosa crema di marroni, Agrimontana utilizza soltanto marroni italiani cresciuti su piante che non subiscono alcun trattamento, per poter garantire di portare sulla tua tavola soltanto la natura.
La ricetta viene seguita nel pieno rispetto della tradizione, utilizzando soltanto frutta selezionata e zucchero grezzo di canna. Tali accorgimenti permettono di ottenere una confettura densa, nutriente, e caratterizzata da un sapore particolarmente intenso.','Piemonte','Agrimontana');
INSERT INTO sheet VALUES('012','Lo Zabaione al Moscato de La Talpina è noto anche come zabajone o zabaglione ed è una crema dolce e spumosa a base di uova e vino Moscato d''Asti DOCG.
Si presenta profumato, dalla consistenza densa e dal sapore intenso e avvolgente, si può servire come dessert, ma è altresì perfetto come ingrediente di svariate preparazioni.','Piemonte','La Talpina');
INSERT INTO sheet VALUES('013','Per questo sugo alle melanzane, Afeltra ha scelto melanzane colte al giusto punto di maturazione in modo da garantire il sapore migliore e pomodori di alta qualità. Solo così il sugo ha tutto il sapore delle melanzane e permette di assaporare il buono di questo ortaggio in qualunque momento dell''anno. Utilizzalo per condire la pasta che preferisci, puoi anche impiegarlo per preparare della sfiziosa pasta al forno.','Campania','Afeltra');
INSERT INTO sheet VALUES('014','Tutto il gusto dei migliori pomodori datterinii e datterini estivi racchiuso in una deliziosa salsa pronta da tenere sempre in dispensa. Alto grado zuccherino, vivace colore rosso, e un sapore dolce e delicato..con un condimento così, la pasta avrà tutto un altro sapore! Prova la salsa Alicos anche in abbinamento alle altre ricette suggerite dalla tua fantasia','Sicilia','Alicos');
INSERT INTO sheet VALUES('015','Il Sugo alla Pescatora 220g di Campisi è il risultato della sapiente lavorazione di prodotti ittici della zona di Marzamemi, in Sicilia. L''ambiente e la tradizione sono la base per la preparazione delle ricette semplici, ma ricercate, che dal 1854 vedono la famiglia Campisi impegnata a tramandare il buono della propria terra.','Sicilia','Campisi');
INSERT INTO sheet VALUES('016','Sugo di cipolla rossa di Tropea IGP: un sugo pronto preparato solo con polpa di pomodoro italiano, olio extravergine di oliva, cipolla rossa di Tropea Calabria IGP, basilico e sale. Il sugo di cipolla rossa di Tropea IGP di Crispino è una novità fatta con le eccellenze agroalimentari del territorio.','Calabria','Crispino');
INSERT INTO sheet VALUES('017','Gli agnolotti del plin di Pastificio Vallebelbo: una ricetta dello chef Ugo Alciati. Una ricetta ricca e preprata con ingredienti selezionati. Una pasta all''uovo con un ripieno di carne di bovino piemontese, salsiccia, spinaci e Parmigiano.','Piemonte','Pastificio Vallebelbo');
INSERT INTO sheet VALUES('018','Plin Fatti a Mano di Plin Alciati: uno dei piatti più amati della tradizione piemontese realizzati a mano nel rispetto della tradizione. Particolarmente adatti per le serate fredde e invernali, si prestano perfettamente ad ogni altro tipo di occasione in cui hai voglia di un primo piatto nutriente e saporito.','Piemonte','Plin Alciati');


###################################################
# ingredient
###################################################
CREATE TABLE ingredient(
	name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500)
);

GRANT ALL ON ingredient TO stat;
###################################################
# made
###################################################
CREATE TABLE made(
	ingredient_name VARCHAR(30),
    sheet_ID CHAR(5),
    FOREIGN KEY (ingredient_name) REFERENCES ingredient(name),
    FOREIGN KEY (sheet_ID) REFERENCES sheet(ID)
);

GRANT ALL ON made TO stat;

###################################################
# menu
###################################################

CREATE TABLE menu(
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500),
    main VARCHAR(30) REFERENCES name
);

GRANT ALL ON menu TO stat;

INSERT INTO menu VALUES('Preserved Foods',NULL, NULL);
INSERT INTO menu VALUES('Olives and Capers',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Sauces and Pesto',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Cream and Pate',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Sweet Products',NULL, NULL);
INSERT INTO menu VALUES('Marmelade and Jam',NULL,'Sweet Products');
INSERT INTO menu VALUES('Spreadables Creams',NULL,'Sweet Products');
INSERT INTO menu VALUES('Condiments',NULL, NULL);
INSERT INTO menu VALUES('Stuffed Pasta', NULL, NULL);
INSERT INTO menu VALUES('Olive Oil',NULL, 'Condiments');
INSERT INTO menu VALUES('Vinegar',NULL, 'Condiments');
INSERT INTO menu VALUES('Cereals and Legumens',NULL, NULL);
INSERT INTO menu VALUES('Legumes',NULL, 'Cereals and Legumens');
INSERT INTO menu VALUES('Pasta',NULL, 'Stuffed Pasta');
INSERT INTO menu VALUES('Sauce-Mashed',NULL, 'Preserved Foods');


###################################################
# food
###################################################

CREATE TABLE food(
    name VARCHAR(100),
    weight NUMERIC(6,2),
    unit VARCHAR(10),
    label VARCHAR(500),
    price NUMERIC(5,2),
    status BOOLEAN,
    menu_name  VARCHAR(30),
    sheet_ID CHAR(5),
    PRIMARY KEY(name, weight, unit),
    FOREIGN KEY (menu_name) REFERENCES menu(name),
    FOREIGN KEY (sheet_ID) REFERENCES sheet(ID)
);

GRANT ALL ON food TO stat;

INSERT INTO food VALUES('Capers in Sea Salt', 500, 'g', 'La Nicchia', 17.50, true, 'Olives and Capers', NULL);
INSERT INTO food VALUES('Capers in Sea Salt', 200, 'g', 'La Nicchia', 8.98, true, 'Olives and Capers', NULL);
INSERT INTO food VALUES('Pistachio Pesto', 190, 'g', 'Scyavuru', 8.9, true, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Traditional Bolognese Ragù', 180, 'g', 'La Dispensa di Amerigo ', 6.9, true, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Organic Tomato and Basil Sauce', 340, 'g', 'Buonamici', 2.4, true, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Historical Bolognese Ragù', 200, 'g', 'La Dispensa di Amerigo', 6.9, true, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Roast Meat Ragù', 190, 'g', 'La Granda Pronta', 5.9, true, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Black Olive Paste', 80, 'g', 'Roi', 2.70, true, 'Cream and Pate', NULL);
INSERT INTO food VALUES('strawberry extra marmelade', 340, 'g', 'Erberossi', 3.6, true, 'Marmelade and Jam', NULL);
INSERT INTO food VALUES('Pistachio Cream', 200, 'g', 'Scyavuru', 7.40, true, 'Spreadables Creams', NULL);
INSERT INTO food VALUES('Cocoa & Hazelnut Cream', 200, 'g', 'Golosi di Salute', 6.90, true, 'Spreadables Creams', NULL);
INSERT INTO food VALUES('Gianduja Cream', 380, 'g', 'Maison Nocciola Piemonte', 11.90, true, 'Spreadables Creams', NULL);
INSERT INTO food VALUES('Pistachio Cream', 150, 'g', 'Babbi', 5.90, true, 'Spreadables Creams', NULL);
INSERT INTO food VALUES('Organic Extra Virgin Olive Oil', 500, 'ml', 'Cufrol', 8.90, true, 'Olive Oil', NULL);
INSERT INTO food VALUES('Primo Organic Extra Virgin Olive Oil', 500, 'ml', 'Frantoi Cutrera', 14.90, true, 'Olive Oil', NULL);
INSERT INTO food VALUES('Extra Virgin Nocellara Olive Oil', 750, 'ml', 'Olis Geraci', 14.80, true, 'Olive Oil', NULL);
INSERT INTO food VALUES('Balsamic Vinegar Glaze', 250, 'ml', 'Acetomodena', 7.80, true, 'Vinegar', NULL);
INSERT INTO food VALUES('Aceto Modena 2 medaglie', 250, 'ml', 'Giusti', 13.60, true, 'Vinegar', NULL);
INSERT INTO food VALUES('Colfiorito lentils', 0.5, 'kg', 'La Valletta', 4.60, true, 'Legumes', NULL);
INSERT INTO food VALUES('Borlotti Beans', 400, 'g', 'Alce Nero', 4.40, NULL, 'Legumes', NULL);
###################################################
INSERT INTO food VALUES('Crema di Pistacchio in Tubetto',100,'g','Alicos',5.98,true,'Spreadables Creams','001');
INSERT INTO food VALUES('Spalmabile al Cioccolato Fondente',270,'g','VIVA by Viviana Varese',9.9,true,'Spreadables Creams','002');
INSERT INTO food VALUES('Spalmabile alla Gianduia',270,'g','VIVA by Viviana Varese',9.5,true,'Spreadables Creams','003');
INSERT INTO food VALUES('Crema Spalmabile al Pistacchio',270,'g','VIVA by Viviana Varese',16,true,'Spreadables Creams','004');
INSERT INTO food VALUES('Spalmabile alla Mandorla',270,'g','VIVA by Viviana Varese',8.8,true,'Spreadables Creams','005');
INSERT INTO food VALUES('Spalmabile Arachidi e Cacao',270,'g','VIVA by Viviana Varese',8.5,true,'Spreadables Creams','006');
INSERT INTO food VALUES('Burro di Arachidi',270,'g','VIVA by Viviana Varese',8,true,'Spreadables Creams','007');
INSERT INTO food VALUES('Cremosa Gianduia',300,'g','Caffarel',6.9,true,'Spreadables Creams','008');
INSERT INTO food VALUES('Crema al Limone',200,'g','Scyavuru',4.6,true,'Spreadables Creams','009');
INSERT INTO food VALUES('Crema all''Arancia',220,'g','Scyavuru',4.8,true,'Spreadables Creams','010');
INSERT INTO food VALUES('Crema al Pistacchio',200,'g','Scyavuru',7.4,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema Pistacchio&Arancia',230,'g','Scyavuru',5.6,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema Alle Mandorle',200,'g','Scyavuru',5.4,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di Pistacchio',190,'g','Alicos',9.9,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di Mandorla Vegana',190,'g','Alicos',7.6,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di Marroni',350,'g','Agrimontana',7.9,true,'Spreadables Creams','011');
INSERT INTO food VALUES('Crema di Marroni Bio',330,'g','Achillea',4.9,NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Zabaglione al Moscato',300,'g','La Talpina',5.5,false,'Spreadables Creams','012');
INSERT INTO food VALUES('Zabaione al Moscato',200,'g','Olivero Claudio',8.4,false,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Zabaione al Passito',240,'g','Olivero Claudio',13.9,false,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Budino al Cacao',400,'g','Altromercato',1.5,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Teo&Bia Crema alle Nocciole',212,'g','La Finestra sul Cielo',10.5,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di pistacchio di Bronte DOP',600,'g','Antica Bronte Dolceria',14.9,true,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Cremadelizia al Cacao',150,'g','Babbi',4.3,true,'Spreadables Creams',NULL);
###################################################
INSERT INTO food VALUES('Agnolotti alle Cime di Rapa',300,'g','Pastificio Vallebelbo',6.3,true,'Pasta',NULL);
INSERT INTO food VALUES('Agnolotti con Radicchio e Speck',300,'g','Pastificio Vallebelbo',7.4,true,'Pasta',NULL);
INSERT INTO food VALUES('Agnolotti del Plin',300,'g','Pastificio Vallebelbo',7.48,true,'Pasta','017');
INSERT INTO food VALUES('Agnolotti del Plin alla Gallina',300,'g','Pastificio Vallebelbo',6.8,true,'Pasta',NULL);
INSERT INTO food VALUES('Agnolotti di Borragine',300,'g','Pastificio Vallebelbo',6.9,true,'Pasta',NULL);
INSERT INTO food VALUES('Agnolotti di Farro',300,'g','Pastificio Vallebelbo',8,true,'Pasta',NULL);
INSERT INTO food VALUES('Agnolotti Patate e Baccalà',300,'g','Pastificio Vallebelbo',7.98,true,'Pasta',NULL);
INSERT INTO food VALUES('Agnolotti Quadrati ai Tre Arrosti',300,'g','Pastificio Vallebelbo',6.58,true,'Pasta',NULL);
INSERT INTO food VALUES('Condimento alle Cime di Rapa',180,'g','Agricola del Sole',3.5,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Condimento per Pasta Con Sarde',180,'g','Alicos',7.98,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Datterino Giallo in Succo',350,'g','Così Com''è',3.3,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Fettuccine Fatte a Mano',120,'g','Plin Alciati',3.1,true,'Pasta',NULL);
INSERT INTO food VALUES('Fettuccine Integrali',300,'g','Pastificio Vallebelbo',5.1,true,'Pasta',NULL);
INSERT INTO food VALUES('Pappardelle all’Uovo',300,'g','Pastificio Vallebelbo',5.48,true,'Pasta',NULL);
INSERT INTO food VALUES('Passata di pomodoro fiaschetto Oro del Parco',1000,'g','Calemone',4.7,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Passata di pomodoro fiaschetto Oro del Parco',500,'g','Calemone',4.7,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Passatelli al Parmigiano Reggiano',250,'g','Pasta Fresca Rossi',3.9,true,'Pasta',NULL);
INSERT INTO food VALUES('Pesto & Bruschetta Ibleo con Finicchietto Selvatico',190,'g','Segreti di Sicilia',4.3,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Pesto Capuliato',190,'g','Segreti di Sicilia',5.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Pesto di Pistacchio',250,'g','Scyavuru',12.5,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Pesto di Pistacchio',180,'g','Scyavuru',10.5,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Pesto Genovese',200,'g','Creuza de Mà',5.1,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Pesto Genovese',90,'g','Creuza de Mà',3.3,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Pesto Senza Aglio',180,'g','Italpesto',6.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Pesto Siciliano',180,'g','Alicos',6.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Plin Fatti a Mano',150,'g','Plin Alciati',8.1,true,'Pasta','018');
INSERT INTO food VALUES('Pomodorini al Naturale',580,'g','Antica Enotria',3.5,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Ragù Fresco alla Bolognese',200,'g','Le Sfogline',3.68,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Ravioli con Polpa di Granchio Reale Blu dell''Adriatico',300,'g','Pastificio Artusi',6.9,true,'Pasta',NULL);
INSERT INTO food VALUES('Ravioli di Zucca',250,'g','Pasta Fresca Rossi',3.9,true,'Pasta',NULL);
INSERT INTO food VALUES('Salsa Pomodori Datterini',330,'g','Alicos',2.9,true,'Sauce-Mashed','014');
INSERT INTO food VALUES('Sfoglie per Lasagne',500,'g','Pastificio Vallebelbo',6.6,true,'Pasta',NULL);
INSERT INTO food VALUES('Sugo al basilico',314,'ml','Antica Enotria',3.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo al Cacioricotta Bio',280,'g','Antica Enotria',4.2,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo Alici con Finocchietto',290,'g','Segreti di Sicilia',4.2,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo all''Arrabbiata',190,'g','Afeltra',3.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo alla amatriciana',200,'g','Afeltra',3.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo alla Norma con Melanzane Fritte in Olio Evo',290,'g','Segreti di Sicilia',4.2,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo alla Pescatora',220,'g','Campisi',3.9,true,'Sauce-Mashed','015');
INSERT INTO food VALUES('Sugo alle melanzane',190,'g','Afeltra',3.9,true,'Sauce-Mashed','013');
INSERT INTO food VALUES('Sugo Alle Sarde',220,'g','Campisi',3.8,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo con Cozze e Vongole',180,'g','Il Vallino',5.98,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo con Salsiccia di Maiale Nero Siciliano',290,'g','Segreti di Sicilia',4.2,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo Fresco Pomodoro e Basilico',200,'g','Le Sfogline',3.1,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo Nero Di Seppia',220,'g','Campisi',3.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo olive e capperi',190,'g','Afeltra',3.9,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo Pomodoro e Basilico',340,'g','Mariangela Prunotto',3.6,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo pronto ''nduja di Spilinga',270,'g','Crispino',4.5,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo pronto al peperoncino calabrese',270,'g','Crispino',4.5,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo pronto cipolla rossa di Tropea IGP',500,'g','Crispino',7.8,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo pronto cipolla rossa di Tropea IGP',270,'g','Crispino',4.5,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Sugo Sapori dell’Orto Bio',340,'g','Buonamici',2.4,true,'Sauce-Mashed',NULL);
INSERT INTO food VALUES('Tagliatelle Emiliane',250,'g','Pasta Fresca Rossi',2.5,true,'Pasta',NULL);
INSERT INTO food VALUES('Tagliolini all’Uovo',300,'g','Pastificio Vallebelbo',5.48,true,'Pasta',NULL);
INSERT INTO food VALUES('Tagliolini di Enkir',300,'g','Pastificio Vallebelbo',6.4,true,'Pasta',NULL);
INSERT INTO food VALUES('Tagliolini Fatti a Mano',120,'g','Plin Alciati',3.1,true,'Pasta',NULL);
INSERT INTO food VALUES('Tortellini al Prosciutto Crudo',125,'g','Pasta Fresca Rossi',1.98,true,'Pasta',NULL);
INSERT INTO food VALUES('Tortellini al Prosciutto Crudo Bio',250,'g','Pasta Fresca Rossi',4.2,false,'Pasta',NULL);
INSERT INTO food VALUES('Tortellini di Modena con Parmigiano Reggiano',250,'g','Pasta Fresca Rossi',3.8,false,'Pasta',NULL);
INSERT INTO food VALUES('Tortellini di Modena con Parmigiano Reggiano Confezione Regalo',1,'Kg','Pasta Fresca Rossi',15.8,false,'Pasta',NULL);

###################################################
# saving
###################################################
CREATE TABLE saving(
   code CHAR(8) PRIMARY KEY,
   type VARCHAR(50),
   start DATE,
   end DATE
);

GRANT ALL ON saving TO stat;
   
INSERT INTO saving VALUES('X01-2023','Seasonal','2023-01-07','2023-02-28');
INSERT INTO saving VALUES('S01-2023','Extra','2023-10-15','2023-09-15');
INSERT INTO saving VALUES('X02-2023','Seasonal','2023-07-10','2023-08-15');
###################################################
# discounted
###################################################
CREATE TABLE discounted(
   name VARCHAR(50),
   weight NUMERIC(6,2),
   unit VARCHAR(10),
   code CHAR(8),
   perc NUMERIC(5,2),
   FOREIGN KEY (name, weight, unit) REFERENCES food(name, weight, unit),
   FOREIGN KEY (code) REFERENCES saving(code)
);

GRANT ALL ON discounted TO stat;

INSERT INTO discounted VALUES('Agnolotti di Farro',300,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Agnolotti Patate e Baccalà',300,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Agnolotti Quadrati ai Tre Arrosti',300,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Passata di pomodoro fiaschetto Oro del Parco',1000,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Passata di pomodoro fiaschetto Oro del Parco',500,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Passatelli al Parmigiano Reggiano',250,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo alla Norma con Melanzane Fritte in Olio Evo',290,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo alla Pescatora',220,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo alle melanzane',190,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo Alle Sarde',220,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo con Cozze e Vongole',180,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo con Salsiccia di Maiale Nero Siciliano',290,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo Fresco Pomodoro e Basilico',200,'g','X01-2023',0.1);
INSERT INTO discounted VALUES('Sugo Nero Di Seppia',220,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Zabaglione al Moscato',300,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Zabaione al Moscato',200,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Zabaione al Passito',240,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Sugo alla Norma con Melanzane Fritte in Olio Evo',290,'g','S01-2023',0.04);
INSERT INTO discounted VALUES('Sugo alla Pescatora',220,'g','S01-2023',0.04);
INSERT INTO discounted VALUES('Sugo alle melanzane',190,'g','S01-2023',0.04);
INSERT INTO discounted VALUES('Sugo Alle Sarde',220,'g','S01-2023',0.04);
INSERT INTO discounted VALUES('Sugo con Cozze e Vongole',180,'g','S01-2023',0.04);
INSERT INTO discounted VALUES('Sugo con Salsiccia di Maiale Nero Siciliano',290,'g','S01-2023',0.04);
INSERT INTO discounted VALUES('Sugo Fresco Pomodoro e Basilico',200,'g','S01-2023',0.04);
INSERT INTO discounted VALUES('Sugo alla Norma con Melanzane Fritte in Olio Evo',290,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Sugo alla Pescatora',220,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Sugo alle melanzane',190,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Sugo Alle Sarde',220,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Sugo con Cozze e Vongole',180,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Sugo con Salsiccia di Maiale Nero Siciliano',290,'g','X02-2023',0.15);
INSERT INTO discounted VALUES('Sugo Fresco Pomodoro e Basilico',200,'g','X02-2023',0.15);


###################################################
# gift basket
###################################################

CREATE TABLE giftBasket(
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500)
);

GRANT ALL ON giftBasket TO stat;

INSERT INTO giftBasket VALUES('Gift hamper', 'for your daily trip');
INSERT INTO giftBasket VALUES('Delight taste', 'for elegant moments');
INSERT INTO giftBasket VALUES('Savory basket', 'tradition and genuineness');
INSERT INTO giftBasket VALUES('Pasta gourmant', 'Pasta, tradition and innovation');

###################################################
# basket comibines
###################################################

CREATE TABLE basketCombines(
    basket_name VARCHAR(30),
    food_name VARCHAR(50),
    food_weight NUMERIC(6,2),
    food_unit VARCHAR(10),
    FOREIGN KEY (basket_name) REFERENCES giftBasket(name),
    FOREIGN KEY (food_name, food_weight, food_unit) REFERENCES food(name, weight, unit)
);

GRANT ALL ON basketCombines TO stat;

INSERT INTO basketCombines VALUES('Delight taste', 'Pistachio Cream', 200, 'g');
INSERT INTO basketCombines VALUES('Delight taste', 'Colfiorito lentils', 0.5, 'kg');
INSERT INTO basketCombines VALUES('Delight taste', 'Capers in Sea Salt', 200, 'g');
INSERT INTO basketCombines VALUES('Delight taste', 'Organic Extra Virgin Olive Oil', 500, 'ml');
INSERT INTO basketCombines VALUES('Savory basket', 'Pistachio Cream', 150, 'g');
INSERT INTO basketCombines VALUES('Savory basket', 'Colfiorito lentils', 0.5, 'kg');
INSERT INTO basketCombines VALUES('Savory basket', 'Aceto Modena 2 medaglie', 250, 'ml');
INSERT INTO basketCombines VALUES('Savory basket', 'Capers in Sea Salt', 500, 'g');
INSERT INTO basketCombines VALUES('Savory basket', 'Organic Extra Virgin Olive Oil', 500, 'ml');
INSERT INTO basketCombines VALUES('Savory basket', 'Black Olive Paste', 80, 'g');
INSERT INTO basketCombines VALUES('Savory basket', 'Historical Bolognese Ragù', 200, 'g');
INSERT INTO basketCombines VALUES('Pasta gourmant', 'Tagliolini all’Uovo', 300, 'g');
INSERT INTO basketCombines VALUES('Pasta gourmant', 'Agnolotti Quadrati ai Tre Arrosti', 300, 'g');
INSERT INTO basketCombines VALUES('Pasta gourmant', 'Sugo alle melanzane', 190, 'g');
INSERT INTO basketCombines VALUES('Pasta gourmant', 'Extra Virgin Nocellara Olive Oil', 750, 'ml');
###################################################
# session
###################################################
CREATE TABLE session(
	ID INTEGER PRIMARY KEY,
    date DATE,
    hour TIME,
    network VARCHAR(100)
);

GRANT ALL ON session TO stat;

INSERT INTO session VALUES(1,'2023-06-13','07:24','232.74.38.55');
INSERT INTO session VALUES(2,'2023-07-22','19:21','173.95.131.86');
INSERT INTO session VALUES(3,'2023-09-04','02:03','137.73.37.44');
INSERT INTO session VALUES(4,'2023-04-28','21:54','39.76.139.191');
INSERT INTO session VALUES(5,'2023-09-26','13:16','215.178.86.73');
INSERT INTO session VALUES(6,'2023-06-04','23:00','140.16.198.207');
INSERT INTO session VALUES(7,'2023-05-27','03:14','114.132.23.65');
INSERT INTO session VALUES(8,'2023-08-14','21:08','125.34.209.51');
INSERT INTO session VALUES(9,'2023-08-04','21:27','85.155.59.154');
INSERT INTO session VALUES(10,'2023-05-25','05:01','10.111.126.86');
INSERT INTO session VALUES(11,'2023-02-03','11:47','91.152.135.171');
INSERT INTO session VALUES(12,'2023-02-11','20:08','13.13.22.170');
INSERT INTO session VALUES(13,'2023-01-10','12:09','188.253.177.39');
INSERT INTO session VALUES(14,'2023-03-04','12:36','236.218.96.168');
INSERT INTO session VALUES(15,'2023-01-07','23:46','216.209.24.152');
INSERT INTO session VALUES(16,'2023-08-09','20:29','44.250.161.153');
INSERT INTO session VALUES(17,'2023-08-17','19:08','62.21.112.63');
INSERT INTO session VALUES(18,'2023-09-21','18:39','1.61.93.24');
INSERT INTO session VALUES(19,'2023-03-11','15:34','42.198.167.96');
INSERT INTO session VALUES(20,'2023-08-18','17:05','75.213.177.238');
INSERT INTO session VALUES(21,'2023-04-28','18:46','253.98.91.205');
INSERT INTO session VALUES(22,'2023-04-15','22:25','170.77.245.174');
INSERT INTO session VALUES(23,'2023-09-19','05:53','106.90.84.129');
INSERT INTO session VALUES(24,'2023-02-06','05:06','221.97.41.96');
INSERT INTO session VALUES(25,'2023-08-28','13:09','82.245.112.60');
INSERT INTO session VALUES(26,'2023-05-15','15:04','23.117.202.105');
INSERT INTO session VALUES(27,'2023-04-25','23:05','4.167.27.194');
INSERT INTO session VALUES(28,'2023-08-02','00:01','88.165.161.36');
INSERT INTO session VALUES(29,'2023-07-05','21:45','205.179.91.94');
INSERT INTO session VALUES(30,'2023-08-18','20:16','112.91.141.225');
INSERT INTO session VALUES(31,'2023-07-06','20:35','30.201.214.224');
INSERT INTO session VALUES(32,'2023-09-13','00:22','168.158.157.29');
INSERT INTO session VALUES(33,'2023-09-24','16:24','114.86.225.40');
INSERT INTO session VALUES(34,'2023-04-03','19:15','179.72.76.45');
INSERT INTO session VALUES(35,'2023-03-01','16:00','185.200.65.85');
INSERT INTO session VALUES(36,'2023-07-04','06:09','60.83.63.1');
INSERT INTO session VALUES(37,'2023-04-17','22:27','230.180.81.32');
INSERT INTO session VALUES(38,'2023-07-22','18:20','246.194.244.77');
INSERT INTO session VALUES(39,'2023-06-22','19:04','163.86.254.113');
INSERT INTO session VALUES(40,'2023-02-12','12:18','31.10.224.244');
INSERT INTO session VALUES(41,'2023-08-04','23:41','116.225.131.241');
INSERT INTO session VALUES(42,'2023-06-02','09:53','204.118.33.152');
INSERT INTO session VALUES(43,'2023-08-21','03:36','213.201.6.71');
INSERT INTO session VALUES(44,'2023-01-17','14:39','117.81.159.243');
INSERT INTO session VALUES(45,'2023-01-05','01:26','139.32.205.240');
INSERT INTO session VALUES(46,'2023-03-04','22:20','143.173.14.19');
INSERT INTO session VALUES(47,'2023-09-01','03:28','196.211.229.143');
INSERT INTO session VALUES(48,'2023-07-23','10:06','207.51.225.196');
INSERT INTO session VALUES(49,'2023-04-13','20:37','212.226.97.26');
INSERT INTO session VALUES(50,'2023-09-17','05:50','137.52.198.236');
INSERT INTO session VALUES(51,'2023-09-07','05:44','130.179.148.56');
INSERT INTO session VALUES(52,'2023-04-25','11:54','30.41.192.188');
INSERT INTO session VALUES(53,'2023-06-04','21:27','51.66.118.96');
INSERT INTO session VALUES(54,'2023-01-01','15:13','177.122.224.150');
INSERT INTO session VALUES(55,'2023-08-04','02:32','252.158.18.83');
INSERT INTO session VALUES(56,'2023-09-05','13:08','50.101.163.186');
INSERT INTO session VALUES(57,'2023-04-12','19:54','115.141.205.172');
INSERT INTO session VALUES(58,'2023-01-18','23:12','218.27.212.115');
INSERT INTO session VALUES(59,'2023-04-26','10:11','87.123.91.98');
INSERT INTO session VALUES(60,'2023-04-09','09:06','76.218.233.19');
INSERT INTO session VALUES(61,'2023-05-09','04:06','1.88.15.145');
INSERT INTO session VALUES(62,'2023-02-15','22:03','206.228.94.63');
INSERT INTO session VALUES(63,'2023-06-21','13:35','149.72.112.3');
INSERT INTO session VALUES(64,'2023-02-10','10:31','184.54.25.46');
INSERT INTO session VALUES(65,'2023-02-04','11:46','132.232.84.133');
INSERT INTO session VALUES(66,'2023-04-27','13:31','215.30.18.215');
INSERT INTO session VALUES(67,'2023-02-12','21:24','61.166.54.9');
INSERT INTO session VALUES(68,'2023-05-06','10:09','92.14.225.183');
INSERT INTO session VALUES(69,'2023-02-10','23:40','114.73.157.41');
INSERT INTO session VALUES(70,'2023-09-22','04:52','100.235.227.224');
INSERT INTO session VALUES(71,'2023-05-04','17:35','215.93.199.170');
INSERT INTO session VALUES(72,'2023-03-14','02:29','166.247.219.46');
INSERT INTO session VALUES(73,'2023-02-24','11:52','38.24.137.63');
INSERT INTO session VALUES(74,'2023-04-06','20:10','11.97.252.76');
INSERT INTO session VALUES(75,'2023-01-05','10:52','3.180.229.246');


###################################################
# choices
###################################################

CREATE TABLE choices(
    ID INTEGER,
    name VARCHAR(30),
    time INTEGER,
    FOREIGN KEY (ID) REFERENCES session(ID),
    FOREIGN KEY (name) REFERENCES Menu(name)
);

GRANT ALL ON choices TO stat;

INSERT INTO choices VALUES(6,'Spreadables Creams',194);
INSERT INTO choices VALUES(2,'Vinegar',451);
INSERT INTO choices VALUES(74,'Cream and Pate',233);
INSERT INTO choices VALUES(71,'Legumes',49);
INSERT INTO choices VALUES(40,'Legumes',63);
INSERT INTO choices VALUES(36,'Marmelade and Jam',187);
INSERT INTO choices VALUES(42,'Vinegar',130);
INSERT INTO choices VALUES(17,'Olives and Capers',104);
INSERT INTO choices VALUES(54,'Vinegar',246);
INSERT INTO choices VALUES(31,'Sauces and Pesto',262);
INSERT INTO choices VALUES(51,'Vinegar',266);
INSERT INTO choices VALUES(46,'Marmelade and Jam',385);
INSERT INTO choices VALUES(10,'Olive Oil',381);
INSERT INTO choices VALUES(38,'Pasta',149);
INSERT INTO choices VALUES(27,'Cream and Pate',60);
INSERT INTO choices VALUES(19,'Pasta',258);
INSERT INTO choices VALUES(45,'Cream and Pate',235);
INSERT INTO choices VALUES(24,'Vinegar',81);
INSERT INTO choices VALUES(40,'Cream and Pate',66);
INSERT INTO choices VALUES(53,'Spreadables Creams',367);
INSERT INTO choices VALUES(34,'Vinegar',475);
INSERT INTO choices VALUES(15,'Legumes',126);
INSERT INTO choices VALUES(16,'Legumes',83);
INSERT INTO choices VALUES(24,'Vinegar',322);
INSERT INTO choices VALUES(64,'Spreadables Creams',176);
INSERT INTO choices VALUES(58,'Sauces and Pesto',427);
INSERT INTO choices VALUES(48,'Pasta',113);
INSERT INTO choices VALUES(43,'Spreadables Creams',18);
INSERT INTO choices VALUES(48,'Pasta',221);
INSERT INTO choices VALUES(53,'Legumes',156);
INSERT INTO choices VALUES(54,'Legumes',138);
INSERT INTO choices VALUES(46,'Sauces and Pesto',285);
INSERT INTO choices VALUES(58,'Cream and Pate',83);
INSERT INTO choices VALUES(33,'Spreadables Creams',399);
INSERT INTO choices VALUES(72,'Vinegar',273);
INSERT INTO choices VALUES(24,'Marmelade and Jam',397);
INSERT INTO choices VALUES(73,'Legumes',163);
INSERT INTO choices VALUES(66,'Vinegar',202);
INSERT INTO choices VALUES(57,'Cream and Pate',277);
INSERT INTO choices VALUES(46,'Olive Oil',421);
INSERT INTO choices VALUES(31,'Spreadables Creams',130);
INSERT INTO choices VALUES(43,'Marmelade and Jam',220);
INSERT INTO choices VALUES(11,'Marmelade and Jam',140);
INSERT INTO choices VALUES(10,'Marmelade and Jam',316);
INSERT INTO choices VALUES(46,'Cream and Pate',434);
INSERT INTO choices VALUES(30,'Vinegar',349);
INSERT INTO choices VALUES(49,'Marmelade and Jam',232);
INSERT INTO choices VALUES(14,'Vinegar',135);
INSERT INTO choices VALUES(24,'Vinegar',269);
INSERT INTO choices VALUES(19,'Olive Oil',241);
INSERT INTO choices VALUES(43,'Olives and Capers',217);
INSERT INTO choices VALUES(57,'Pasta',145);
INSERT INTO choices VALUES(28,'Spreadables Creams',141);
INSERT INTO choices VALUES(18,'Marmelade and Jam',274);
INSERT INTO choices VALUES(29,'Vinegar',253);
INSERT INTO choices VALUES(5,'Marmelade and Jam',154);
INSERT INTO choices VALUES(35,'Sauces and Pesto',378);
INSERT INTO choices VALUES(20,'Legumes',179);
INSERT INTO choices VALUES(23,'Spreadables Creams',356);
INSERT INTO choices VALUES(65,'Sauce-Mashed',314);
INSERT INTO choices VALUES(67,'Sauces and Pesto',172);
INSERT INTO choices VALUES(14,'Spreadables Creams',373);
INSERT INTO choices VALUES(53,'Olive Oil',422);
INSERT INTO choices VALUES(37,'Marmelade and Jam',261);
INSERT INTO choices VALUES(65,'Olives and Capers',365);
INSERT INTO choices VALUES(2,'Olive Oil',5);
INSERT INTO choices VALUES(39,'Cream and Pate',301);
INSERT INTO choices VALUES(56,'Olive Oil',336);
INSERT INTO choices VALUES(37,'Marmelade and Jam',378);
INSERT INTO choices VALUES(11,'Olive Oil',271);
INSERT INTO choices VALUES(49,'Legumes',423);
INSERT INTO choices VALUES(15,'Olive Oil',412);
INSERT INTO choices VALUES(55,'Vinegar',17);
INSERT INTO choices VALUES(18,'Vinegar',455);
INSERT INTO choices VALUES(8,'Marmelade and Jam',125);
INSERT INTO choices VALUES(60,'Sauces and Pesto',13);
INSERT INTO choices VALUES(62,'Sauce-Mashed',144);
INSERT INTO choices VALUES(41,'Olives and Capers',468);
INSERT INTO choices VALUES(34,'Legumes',394);
INSERT INTO choices VALUES(37,'Cream and Pate',127);
INSERT INTO choices VALUES(11,'Cream and Pate',278);
INSERT INTO choices VALUES(62,'Olive Oil',422);
INSERT INTO choices VALUES(25,'Olive Oil',453);
INSERT INTO choices VALUES(59,'Olives and Capers',19);
INSERT INTO choices VALUES(9,'Vinegar',65);
INSERT INTO choices VALUES(15,'Vinegar',407);
INSERT INTO choices VALUES(14,'Sauce-Mashed',399);
INSERT INTO choices VALUES(42,'Spreadables Creams',480);
INSERT INTO choices VALUES(73,'Spreadables Creams',150);
INSERT INTO choices VALUES(53,'Legumes',496);
INSERT INTO choices VALUES(52,'Legumes',439);
INSERT INTO choices VALUES(32,'Vinegar',387);
INSERT INTO choices VALUES(5,'Vinegar',20);
INSERT INTO choices VALUES(22,'Olives and Capers',309);
INSERT INTO choices VALUES(34,'Pasta',316);
INSERT INTO choices VALUES(24,'Sauces and Pesto',404);
INSERT INTO choices VALUES(55,'Spreadables Creams',52);
INSERT INTO choices VALUES(69,'Pasta',138);
INSERT INTO choices VALUES(48,'Pasta',433);
INSERT INTO choices VALUES(46,'Sauce-Mashed',126);
INSERT INTO choices VALUES(72,'Marmelade and Jam',3);
INSERT INTO choices VALUES(19,'Legumes',377);
INSERT INTO choices VALUES(74,'Sauce-Mashed',365);
INSERT INTO choices VALUES(64,'Pasta',452);
INSERT INTO choices VALUES(34,'Olive Oil',270);
INSERT INTO choices VALUES(74,'Sauces and Pesto',115);
INSERT INTO choices VALUES(29,'Marmelade and Jam',41);
INSERT INTO choices VALUES(26,'Spreadables Creams',271);
INSERT INTO choices VALUES(31,'Cream and Pate',38);
INSERT INTO choices VALUES(20,'Olives and Capers',410);
INSERT INTO choices VALUES(23,'Legumes',118);
INSERT INTO choices VALUES(58,'Vinegar',311);
INSERT INTO choices VALUES(43,'Legumes',296);
INSERT INTO choices VALUES(75,'Olive Oil',69);
INSERT INTO choices VALUES(66,'Marmelade and Jam',272);
INSERT INTO choices VALUES(22,'Spreadables Creams',263);
INSERT INTO choices VALUES(28,'Pasta',156);
INSERT INTO choices VALUES(75,'Spreadables Creams',231);
INSERT INTO choices VALUES(51,'Marmelade and Jam',410);
INSERT INTO choices VALUES(21,'Cream and Pate',52);
INSERT INTO choices VALUES(60,'Pasta',133);
INSERT INTO choices VALUES(20,'Olive Oil',275);
INSERT INTO choices VALUES(63,'Sauce-Mashed',366);
INSERT INTO choices VALUES(54,'Vinegar',463);
INSERT INTO choices VALUES(52,'Cream and Pate',442);
INSERT INTO choices VALUES(45,'Marmelade and Jam',39);
INSERT INTO choices VALUES(64,'Legumes',81);
INSERT INTO choices VALUES(8,'Olive Oil',141);
INSERT INTO choices VALUES(6,'Spreadables Creams',335);
INSERT INTO choices VALUES(67,'Pasta',56);
INSERT INTO choices VALUES(36,'Sauces and Pesto',382);
INSERT INTO choices VALUES(4,'Marmelade and Jam',311);
INSERT INTO choices VALUES(70,'Sauces and Pesto',463);
INSERT INTO choices VALUES(24,'Pasta',192);
INSERT INTO choices VALUES(29,'Cream and Pate',250);
INSERT INTO choices VALUES(17,'Legumes',265);
INSERT INTO choices VALUES(17,'Olives and Capers',24);
INSERT INTO choices VALUES(44,'Sauces and Pesto',413);
INSERT INTO choices VALUES(17,'Olive Oil',444);
INSERT INTO choices VALUES(43,'Cream and Pate',5);
INSERT INTO choices VALUES(42,'Sauce-Mashed',253);
INSERT INTO choices VALUES(7,'Legumes',240);
INSERT INTO choices VALUES(18,'Marmelade and Jam',346);
INSERT INTO choices VALUES(31,'Vinegar',192);
INSERT INTO choices VALUES(63,'Spreadables Creams',246);
INSERT INTO choices VALUES(62,'Vinegar',293);
INSERT INTO choices VALUES(14,'Cream and Pate',158);
INSERT INTO choices VALUES(66,'Sauces and Pesto',80);
INSERT INTO choices VALUES(30,'Olives and Capers',81);
INSERT INTO choices VALUES(60,'Cream and Pate',47);
INSERT INTO choices VALUES(69,'Sauces and Pesto',224);
INSERT INTO choices VALUES(32,'Spreadables Creams',1);
INSERT INTO choices VALUES(3,'Spreadables Creams',189);
INSERT INTO choices VALUES(13,'Legumes',61);
INSERT INTO choices VALUES(30,'Sauce-Mashed',384);
INSERT INTO choices VALUES(35,'Pasta',332);
INSERT INTO choices VALUES(23,'Sauce-Mashed',385);
INSERT INTO choices VALUES(61,'Pasta',441);
INSERT INTO choices VALUES(7,'Olive Oil',484);
INSERT INTO choices VALUES(23,'Olive Oil',43);
INSERT INTO choices VALUES(60,'Sauces and Pesto',318);
INSERT INTO choices VALUES(10,'Pasta',184);
INSERT INTO choices VALUES(32,'Olives and Capers',488);
INSERT INTO choices VALUES(60,'Sauces and Pesto',370);
INSERT INTO choices VALUES(57,'Pasta',295);
INSERT INTO choices VALUES(34,'Pasta',321);
INSERT INTO choices VALUES(15,'Marmelade and Jam',305);
INSERT INTO choices VALUES(64,'Olives and Capers',77);
INSERT INTO choices VALUES(70,'Marmelade and Jam',410);
INSERT INTO choices VALUES(47,'Olive Oil',474);
INSERT INTO choices VALUES(37,'Sauces and Pesto',363);
INSERT INTO choices VALUES(56,'Sauces and Pesto',280);
INSERT INTO choices VALUES(5,'Spreadables Creams',357);
INSERT INTO choices VALUES(71,'Spreadables Creams',8);
INSERT INTO choices VALUES(27,'Legumes',334);
INSERT INTO choices VALUES(20,'Cream and Pate',485);
INSERT INTO choices VALUES(2,'Marmelade and Jam',199);
INSERT INTO choices VALUES(6,'Olives and Capers',380);
INSERT INTO choices VALUES(30,'Legumes',37);
INSERT INTO choices VALUES(19,'Olives and Capers',396);
INSERT INTO choices VALUES(11,'Olives and Capers',136);
INSERT INTO choices VALUES(36,'Sauce-Mashed',52);
INSERT INTO choices VALUES(65,'Vinegar',216);
INSERT INTO choices VALUES(18,'Sauce-Mashed',403);
INSERT INTO choices VALUES(43,'Cream and Pate',11);
INSERT INTO choices VALUES(18,'Pasta',336);
INSERT INTO choices VALUES(69,'Marmelade and Jam',445);
INSERT INTO choices VALUES(50,'Legumes',384);
INSERT INTO choices VALUES(24,'Spreadables Creams',86);
INSERT INTO choices VALUES(2,'Spreadables Creams',460);
INSERT INTO choices VALUES(14,'Pasta',480);
INSERT INTO choices VALUES(67,'Legumes',37);
INSERT INTO choices VALUES(42,'Olive Oil',176);
INSERT INTO choices VALUES(7,'Legumes',494);
INSERT INTO choices VALUES(14,'Vinegar',428);
INSERT INTO choices VALUES(8,'Pasta',408);
INSERT INTO choices VALUES(21,'Sauce-Mashed',334);
INSERT INTO choices VALUES(66,'Marmelade and Jam',159);
INSERT INTO choices VALUES(40,'Olive Oil',338);
INSERT INTO choices VALUES(54,'Olive Oil',7);


###################################################
# selection
###################################################

CREATE TABLE selection(
    ID INTEGER,
    food_name VARCHAR(100),
    food_weight NUMERIC(6,2),
    food_unit VARCHAR(10),
    quantity INTEGER,
    timestamp DATE,
    FOREIGN KEY (ID) REFERENCES session(ID),
    FOREIGN KEY (food_name, food_weight, food_unit) REFERENCES food(name, weight, unit)
);

GRANT ALL ON selection TO stat;

INSERT INTO selection VALUES(19,'Agnolotti con Radicchio e Speck',300,'g',8,'2023-03-17');
INSERT INTO selection VALUES(48,'Pappardelle all’Uovo',300,'g',7,'2023-02-09');
INSERT INTO selection VALUES(8,'Sugo Nero Di Seppia',220,'g',1,'2023-06-08');
INSERT INTO selection VALUES(14,'Fettuccine Integrali',300,'g',7,'2023-02-27');
INSERT INTO selection VALUES(34,'Tortellini al Prosciutto Crudo',125,'g',8,'2023-09-02');
INSERT INTO selection VALUES(39,'Agnolotti del Plin',300,'g',9,'2023-07-24');
INSERT INTO selection VALUES(43,'Passata di pomodoro fiaschetto Oro del Parco',1000,'g',6,'2023-09-09');
INSERT INTO selection VALUES(11,'Pesto di Pistacchio',180,'g',10,'2023-05-22');
INSERT INTO selection VALUES(37,'Teo&Bia Crema alle Nocciole',212,'g',2,'2023-02-01');
INSERT INTO selection VALUES(17,'Pesto Capuliato',190,'g',10,'2023-06-17');
INSERT INTO selection VALUES(33,'Sugo alle melanzane',190,'g',10,'2023-06-01');
INSERT INTO selection VALUES(47,'Agnolotti Quadrati ai Tre Arrosti',300,'g',1,'2023-04-28');
INSERT INTO selection VALUES(12,'Crema di Marroni',350,'g',2,'2023-07-08');
INSERT INTO selection VALUES(5,'Tagliolini all’Uovo',300,'g',5,'2023-04-21');
INSERT INTO selection VALUES(34,'Crema di Pistacchio in Tubetto',100,'g',9,'2023-09-02');
INSERT INTO selection VALUES(17,'Sugo alle melanzane',190,'g',3,'2023-06-17');
INSERT INTO selection VALUES(40,'Condimento per Pasta Con Sarde',180,'g',8,'2023-02-28');
INSERT INTO selection VALUES(33,'Teo&Bia Crema alle Nocciole',212,'g',3,'2023-06-01');
INSERT INTO selection VALUES(4,'Sugo pronto ''nduja di Spilinga',270,'g',9,'2023-06-14');
INSERT INTO selection VALUES(32,'Crema di Pistacchio in Tubetto',100,'g',7,'2023-09-15');
INSERT INTO selection VALUES(36,'Condimento alle Cime di Rapa',180,'g',1,'2023-02-25');
INSERT INTO selection VALUES(33,'Agnolotti con Radicchio e Speck',300,'g',8,'2023-06-01');
INSERT INTO selection VALUES(36,'Tortellini al Prosciutto Crudo',125,'g',1,'2023-02-25');
INSERT INTO selection VALUES(19,'Ragù Fresco alla Bolognese',200,'g',3,'2023-03-17');
INSERT INTO selection VALUES(47,'Agnolotti Patate e Baccalà',300,'g',1,'2023-04-28');
INSERT INTO selection VALUES(3,'Agnolotti alle Cime di Rapa',300,'g',6,'2023-05-14');
INSERT INTO selection VALUES(43,'Sugo olive e capperi',190,'g',1,'2023-09-09');
INSERT INTO selection VALUES(5,'Sugo Alle Sarde',220,'g',3,'2023-04-21');
INSERT INTO selection VALUES(12,'Spalmabile Arachidi e Cacao',270,'g',5,'2023-07-08');
INSERT INTO selection VALUES(27,'Datterino Giallo in Succo',350,'g',3,'2023-05-22');
INSERT INTO selection VALUES(20,'Budino al Cacao',400,'g',8,'2023-08-01');
INSERT INTO selection VALUES(24,'Condimento per Pasta Con Sarde',180,'g',7,'2023-01-23');
INSERT INTO selection VALUES(41,'Crema all''Arancia',220,'g',10,'2023-08-10');
INSERT INTO selection VALUES(21,'Tagliolini di Enkir',300,'g',10,'2023-06-21');
INSERT INTO selection VALUES(1,'Teo&Bia Crema alle Nocciole',212,'g',9,'2023-06-27');
INSERT INTO selection VALUES(12,'Crema di Marroni',350,'g',9,'2023-07-08');
INSERT INTO selection VALUES(13,'Condimento per Pasta Con Sarde',180,'g',2,'2023-03-27');
INSERT INTO selection VALUES(33,'Sugo alla Pescatora',220,'g',4,'2023-06-01');
INSERT INTO selection VALUES(8,'Sugo con Cozze e Vongole',180,'g',10,'2023-06-08');
INSERT INTO selection VALUES(26,'Ravioli di Zucca',250,'g',3,'2023-07-19');
INSERT INTO selection VALUES(2,'Sugo alla Norma con Melanzane Fritte in Olio Evo',290,'g',8,'2023-04-28');
INSERT INTO selection VALUES(33,'Pesto Genovese',90,'g',4,'2023-06-01');
INSERT INTO selection VALUES(8,'Cremadelizia al Cacao',150,'g',1,'2023-06-08');
INSERT INTO selection VALUES(1,'Agnolotti alle Cime di Rapa',300,'g',5,'2023-06-27');
INSERT INTO selection VALUES(39,'Sugo pronto cipolla rossa di Tropea IGP',270,'g',9,'2023-07-24');
INSERT INTO selection VALUES(7,'Sugo alla amatriciana',200,'g',10,'2023-01-01');
INSERT INTO selection VALUES(31,'Spalmabile al Cioccolato Fondente',270,'g',1,'2023-07-25');
INSERT INTO selection VALUES(6,'Sugo pronto ''nduja di Spilinga',270,'g',4,'2023-01-13');
INSERT INTO selection VALUES(50,'Tagliolini di Enkir',300,'g',9,'2023-09-09');
INSERT INTO selection VALUES(28,'Sugo pronto cipolla rossa di Tropea IGP',270,'g',4,'2023-06-19');
INSERT INTO selection VALUES(12,'Sugo all''Arrabbiata',190,'g',1,'2023-07-08');
INSERT INTO selection VALUES(18,'Pesto Siciliano',180,'g',2,'2023-09-18');
INSERT INTO selection VALUES(19,'Ravioli con Polpa di Granchio Reale Blu dell''Adriatico',300,'g',4,'2023-03-17');
INSERT INTO selection VALUES(7,'Pesto & Bruschetta Ibleo con Finicchietto Selvatico',190,'g',5,'2023-01-01');
INSERT INTO selection VALUES(27,'Crema di pistacchio di Bronte DOP',600,'g',2,'2023-05-22');
INSERT INTO selection VALUES(19,'Crema di Marroni',350,'g',10,'2023-03-17');
INSERT INTO selection VALUES(34,'Pesto di Pistacchio',180,'g',6,'2023-09-02');
INSERT INTO selection VALUES(26,'Sugo alle melanzane',190,'g',7,'2023-07-19');
INSERT INTO selection VALUES(30,'Cremadelizia al Cacao',150,'g',8,'2023-09-06');
INSERT INTO selection VALUES(8,'Pesto Senza Aglio',180,'g',1,'2023-06-08');
INSERT INTO selection VALUES(31,'Sugo alla Norma con Melanzane Fritte in Olio Evo',290,'g',7,'2023-07-25');
INSERT INTO selection VALUES(6,'Sugo alla amatriciana',200,'g',3,'2023-01-13');
INSERT INTO selection VALUES(21,'Fettuccine Fatte a Mano',120,'g',5,'2023-06-21');
INSERT INTO selection VALUES(36,'Pesto & Bruschetta Ibleo con Finicchietto Selvatico',190,'g',10,'2023-02-25');
INSERT INTO selection VALUES(17,'Pesto & Bruschetta Ibleo con Finicchietto Selvatico',190,'g',2,'2023-06-17');
INSERT INTO selection VALUES(44,'Sugo Fresco Pomodoro e Basilico',200,'g',5,'2023-09-09');
INSERT INTO selection VALUES(7,'Agnolotti Patate e Baccalà',300,'g',7,'2023-01-01');
INSERT INTO selection VALUES(9,'Pesto Genovese',90,'g',3,'2023-05-27');
INSERT INTO selection VALUES(34,'Pesto Genovese',200,'g',9,'2023-09-02');
INSERT INTO selection VALUES(37,'Sugo pronto ''nduja di Spilinga',270,'g',10,'2023-02-01');
INSERT INTO selection VALUES(14,'Pomodorini al Naturale',580,'g',8,'2023-02-27');
INSERT INTO selection VALUES(9,'Pesto & Bruschetta Ibleo con Finicchietto Selvatico',190,'g',7,'2023-05-27');
INSERT INTO selection VALUES(21,'Crema di Pistacchio in Tubetto',100,'g',8,'2023-06-21');
INSERT INTO selection VALUES(23,'Tagliolini di Enkir',300,'g',10,'2023-06-19');
INSERT INTO selection VALUES(20,'Sugo Fresco Pomodoro e Basilico',200,'g',9,'2023-08-01');
INSERT INTO selection VALUES(38,'Sugo olive e capperi',190,'g',5,'2023-01-16');
INSERT INTO selection VALUES(27,'Sugo Pomodoro e Basilico',340,'g',10,'2023-05-22');
INSERT INTO selection VALUES(16,'Pesto di Pistacchio',250,'g',7,'2023-05-25');
INSERT INTO selection VALUES(15,'Pappardelle all’Uovo',300,'g',10,'2023-04-09');
INSERT INTO selection VALUES(50,'Sugo Alle Sarde',220,'g',10,'2023-09-09');
INSERT INTO selection VALUES(34,'Pappardelle all’Uovo',300,'g',6,'2023-09-02');
INSERT INTO selection VALUES(23,'Sugo con Cozze e Vongole',180,'g',5,'2023-06-19');
INSERT INTO selection VALUES(13,'Spalmabile Arachidi e Cacao',270,'g',4,'2023-03-27');
INSERT INTO selection VALUES(26,'Crema Spalmabile al Pistacchio',270,'g',8,'2023-07-19');
INSERT INTO selection VALUES(12,'Sugo alla Pescatora',220,'g',7,'2023-07-08');
INSERT INTO selection VALUES(27,'Burro di Arachidi',270,'g',6,'2023-05-22');
INSERT INTO selection VALUES(17,'Sugo al Cacioricotta Bio',280,'g',7,'2023-06-17');
INSERT INTO selection VALUES(23,'Sugo Sapori dell’Orto Bio',340,'g',1,'2023-06-19');
INSERT INTO selection VALUES(33,'Passata di pomodoro fiaschetto Oro del Parco',1000,'g',2,'2023-06-01');
INSERT INTO selection VALUES(10,'Tagliolini all’Uovo',300,'g',8,'2023-09-09');
INSERT INTO selection VALUES(18,'Sugo alla amatriciana',200,'g',8,'2023-09-18');
INSERT INTO selection VALUES(5,'Tagliolini all’Uovo',300,'g',3,'2023-04-21');
INSERT INTO selection VALUES(44,'Sugo Sapori dell’Orto Bio',340,'g',4,'2023-09-09');
INSERT INTO selection VALUES(9,'Spalmabile alla Mandorla',270,'g',1,'2023-05-27');
INSERT INTO selection VALUES(14,'Sugo alla Pescatora',220,'g',8,'2023-02-27');
INSERT INTO selection VALUES(1,'Pesto Siciliano',180,'g',9,'2023-06-27');
INSERT INTO selection VALUES(41,'Pesto di Pistacchio',250,'g',8,'2023-08-10');
INSERT INTO selection VALUES(15,'Pesto Genovese',200,'g',3,'2023-04-09');
INSERT INTO selection VALUES(37,'Pesto & Bruschetta Ibleo con Finicchietto Selvatico',190,'g',3,'2023-02-01');
INSERT INTO selection VALUES(6,'Crema al Pistacchio',200,'g',8,'2023-01-13');

