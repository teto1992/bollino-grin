:- consult('toypisal31.pl').

bollinoGRIN() :-
    insegnamentiOk(),
    informaticaOk(), areefondamentaliOk(), 
    matematicaOk(), 
    anvur(si), 
    writeln('3) Il corso è accreditato presso l\'ANVUR'),
    writeln('Il corso soddisfa i requisiti del bollino GRIN per la Laurea L-31').

matematicaOk() :-
    matematiche(Maths), algebrageometria(AlgGeom), altrematematiche(AltreMat),
    findall(C, (ins(_,_,M,C,_), member(M, Maths)), Cs), sumlist(Cs, ToTCreditiMatematica),
    ToTCreditiMatematica >= 24,
    writeln('2) Il corso ha almeno 24 CFU riferibili a MAT/01, 02, 03, 05, 06, 08, 09'),
    findall(C, ins(_,_,mat05,C,_), CsMat05), sumlist(CsMat05,Mat05),  Mat05 >= 6,
    writeln('\t - almeno 6 di questi CFU sono riferibili a MAT/05 (Analisi Matematica)'),
    findall(C, (ins(_,_,M,C,_), member(M, AlgGeom)), CsAlgGeom), sumlist(CsAlgGeom, ToTCreditiAlgGeom), ToTCreditiAlgGeom >= 6,
    writeln('\t - almeno 6 di questi CFU sono riferibili a MAT/02, 03 (Algebra e Geometria)'),
    findall(C, (ins(_,_,M,C,_), member(M, AltreMat)), CsAltreMat), sumlist(CsAltreMat, ToTCreditiAltreMat), ToTCreditiAltreMat >= 6,
    writeln('\t - almeno 12 di questi CFU sono riferibili a MAT/01, 06, 08, 09 (Logica Matematica, Probabilità e Statistica, Analisi Numerica, Ricerca Operativa)').

informaticaOk() :-
    findall(C, ins(_, _, inf01, C, _), C1), sumlist(C1,CreditiINF01),
    findall(C, ins(_, _, inginf05, C, _), C2), sumlist(C2, CreditiINGINF05),
    CreditiINF01 + CreditiINGINF05 >= 78,
    writeln('1) Il corso ha almeno 78 CFU riferibili a INF/01 o ING-INF/05').

areefondamentaliOk() :-
    findall((I,S,CXA), (ins(I, _, _, _, _), creditiInAreaFondamentale(I, S, CXA)), CXAreaFondamentale),
    findall(C, member((_,_,C), CXAreaFondamentale), Cs), sumlist(Cs, TotCreditiInAreeFondamentali),
    TotCreditiInAreeFondamentali >= 60,
    writeln('\t - almeno 60 di questi CFU sono riferibili alle aree fondamentali previste dal Bollino'),
    findall(S, distinct(member((_,S,_), CXAreaFondamentale)), Ss), 
    length(Ss, N),N >= 7,
    writeln('\t - almeno 7 aree fondamentali sono coperte').

creditiInAreaFondamentale(Insegnamento, Sigla, CFUinAreaFondamentale) :-
    ins(Insegnamento, _, _, _, CreditiPerArea), area(_, Sigla, AreeFondamentali),
    findall(C, (member((A,C), CreditiPerArea), member(A, AreeFondamentali)), Cs),
    sumlist(Cs, CFUinAreaFondamentale), dif(CFUinAreaFondamentale, 0).

insegnamentiOk() :-
    findall(Name, insegnamentoNonValido(Name), []),
    writeln('Gli insegnamenti INF/01 e ING-INF/05 sono stati correttamente inseriti').

insegnamentoNonValido(Name) :-
    ins(Name, _, inf01, Crediti, CreditiPerArea), 
    findall(C, member((_,C), CreditiPerArea), Cs), sumlist(Cs, Tot),
    dif(Crediti, Tot), writeln(Name).
