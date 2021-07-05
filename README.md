# Indagini-epidemiologiche
***
## Utilizzo:
Il programma "Indagini-Epidemiologiche" è un software sviluppato in Java per la consultazione e registrazione di dati di tipo epidemiologico su territorio Nazionale. 
Lo scopo principale del software è quello di consentire agli utenti di poter gestire in modo rapido e veloce dati riguardanti malattie come ad esempio tubercolosi o epatite per nazione, regione, provincia e comune. Questo programma potrebbe essere utile a enti di sorveglianza sanitaria per monitorare il numero di casi per malattie e confrontarli con il numero di decessi annui.

Il software prevede 3 utenti diversi: Il personale dell'Ente Nazionale Gestione Informazioni Socio-Sanitarie (E.N.G.I.S.S.), il personale a contratto e il ricercatore analista.

•	Il personale E.N.G.I.S.S. (= Ente Nazionale Gestione Informazioni Socio-Sanitarie) si occupa di:
o	inserimento, all’interno di un database, dei dati che riguardano episodi il numero di decessi annui causati da: Incidenti, Malattie tumorali, Malattie cardiovascolari, Influenze, Meningiti, Polmoniti, Epatiti, Morbilli, Tubercolosi, Gastroenteriti.
o	può modificare i dati del territorio per comune (Superficie in km2, Tipo di territorio, Data istituzione, Presenza o meno del mare).
o	assegna i comuni in cui monitorare i dati epidemiologici, al personale a contratto.

•	Il personale a contratto, una volta assegnatoli un comune da parte del personale E.N.G.I.S.S., si occuperà di registrare una volta a settimana i dati epidemiologici dei comuni di sua competenza.

•	Il ricercatore analista potrà monitorare i dati epidemiologici o consultare il numero dei decessi annui applicando vari filtri come la scelta della regione, provincia o comune, l’anno di inserimento dei dati e la loro tipologia (per esempio osservare tutte le malattie o soltanto una alla volta); inoltre potrà confrontare i dati anno per anno, provincia per provincia.
Potrà poi scaricare (sia per il monitoraggio, sia per il confronto) una copia dei dati di suo interesse nei formati .xlsx, .txt, .xml e .csv. 

Sia il personale ENGISS che il personale a contratto possono, mediante tabella, consultare i dati già inseriti nel database.

***

## Installazione:
Estrarre la cartella compressa .zip.

Un file eseguibile "Indagini epidemiologiche" si trova in Indagini-Epidemiologiche\dist.

Per la memorizzazione dei dati è stato creato un database utilizzando [Xampp](https://www.apachefriends.org/it/index.html), programma da utilizzare per la connessione al database. 

All'interno della cartella "Indagini-Epidemiologiche" è presente un file chiamato "Demo-Database" da poter utilizzare, importando il file come Database sulla pagina [phpMyAdmin](http://localhost/phpmyadmin/index.php?lang=it).

***

## Autori: 
Sviluppato da Alessandro Brun e Veronica Papini, studenti di Bioninformatica dell'Università di Verona.

***

## Stato del progetto:
Il progetto è stato terminato ad una versione funzionale; non verrà ulteriormente aggiornato/seguito.
