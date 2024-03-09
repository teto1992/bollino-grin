% ins(Nome, Anno, Settore, CreditiTotali, CreditiXArea).

matematiche([mat01, mat02, mat03, mat05, mat06, mat08, mat09]).
algebrageometria([mat02, mat03]).
altrematematiche([mat01, mat06, mat08, mat09]).

area(fondamenti, a, [alf, cal, com, slp, tic, l, sd]).
area(algoritmi, b, [sdf, tapa, a, asc, taa, sda, ad, ap, an]).
area(programmazione, c, [psa, ss, cb, p, r, sdtd, scp, poo, pp, pcc]).
area(linguaggi, d, [lf, s, matr, ttci, pln, alc, mp, tav]).
area(architetture, e, [ccs, ac, lis, lmp, ass, gm, gio, vmp, aa]).
area(sistemioperativi, f, [sc, gsp, gm, fs, amm, gp, gca, ps, ma, saa]).
area(basididati, g, [ml, pc, pl, li, dbms, lp, ndb, ofgi, tcr, bda]).
area(reti, h, [fcd, artc, pt, sr, mir, srm, pasr, grc, dr]).
area(ingegneriadelsoftware, i, [pss, lms, ar, asw, psc, tvv, as, mes, epgs, msq, epg]).
area(interazione, l, [mmpi, pmtv, imw, tmi, pirv, sias, mg, rv, esm]).
area(kr, m, [rp, sbc, lpd, arc, ai, ra, aasc, bc, aia]).

ins('programmazione e algoritmi', 1, inf01, 12, [(slp, 6), (sdf, 3), (tapa, 1), (a, 2)]).
ins('lab1', 1, inf01, 12, [(psa, 12)]).
ins('analisi matematica', 1, mat05, 12, []).
ins('lingua inglese', 1, etc, 3, []).
ins('fondamenti dell\'informatica', 1, inf01, 9, [(alf, 9)]).
ins('algebra lineare', 1, mat02, 6, []).

ins('architetture e sistemi operativi', 2, inf01, 15, [(ccs, 5), (ass, 2), (lmp,3), (sc, 5)]).
ins('lab2', 2, inf01, 12, [(ccs, 6), (ps, 6)]).
ins('ricerca operativa', 2, mat09, 6, []).
ins('paradigmi di programmazione', 2, inf01, 9, [(lf, 9)]).
ins('calcolo numerico', 2, mat02, 6, []).
ins('statistica', 2, mat06, 6, []).

ins('ingegneria del sw', 3, inf01, 6, [(pss, 6)]).
ins('introduzione all\'ai', 3, inf01, 6, [(ai, 6)]).
ins('reti e lab 3', 3, inf01, 9, [(artc, 6), (pasr, 3)]).
ins('basi di dati', 3, inf01, 6, [(dbms, 6)]).
ins('orientamento ict', 3, inf01, 3, [(varie, 3)]).

anvur(si).