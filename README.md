# bollino-grin

Questo semplice programma Prolog prende in input la descrizione di un corso di laurea in Informatica (L-31) e verifica se questo rispetta i [requisiti previsti](http://grinold.consorzio-cini.it/2015/includes/RegoleCertificazione2013.pdf) per la certificazione Bolling GRIN.

Per esempio, invocando la query  `?- bollinoGRIN.` sul file di esempio (ispirato alla Laurea L-31 di Unipi) si ottiene l'output seguente: 

```
Gli insegnamenti INF/01 e ING-INF/05 sono stati correttamente inseriti
1) Il corso ha almeno 78 CFU riferibili a INF/01 o ING-INF/05
- almeno 60 di questi CFU sono riferibili alle aree fondamentali previste dal Bollino
- almeno 7 aree fondamentali sono coperte
2) Il corso ha almeno 24 CFU riferibili a MAT/01, 02, 03, 05, 06, 08, 09
- almeno 6 di questi CFU sono riferibili a MAT/05 (Analisi Matematica)
- almeno 6 di questi CFU sono riferibili a MAT/02, 03 (Algebra e Geometria)
- almeno 12 di questi CFU sono riferibili a MAT/01, 06, 08, 09 (Logica Matematica, Probabilità e Statistica, Analisi Numerica, Ricerca Operativa)
3) Il corso è accreditato presso l'ANVUR
Il corso soddisfa i requisiti del bollino GRIN per la Laurea L-31
true
```
