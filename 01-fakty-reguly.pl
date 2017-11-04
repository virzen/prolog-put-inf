mezczyzna(piotr).
mezczyzna(adam).
mezczyzna(marek).
mezczyzna(robert).
mezczyzna(jan).
mezczyzna(krzysztof).
mezczyzna(radek).
mezczyzna(darek).
mezczyzna(tomek).
mezczyzna(jacek).

kobieta(maria).
kobieta(ewa).
kobieta(joanna).
kobieta(agata).
kobieta(anna).
kobieta(agnieszka).
kobieta(beata).
kobieta(iwona).

rodzic(maria, agata).
rodzic(maria, marek).
rodzic(maria, jan).
rodzic(piotr, agata).
rodzic(piotr, marek).
rodzic(piotr, jan).
rodzic(ewa, anna).
rodzic(ewa, joanna).
rodzic(ewa, krzysztof).
rodzic(adam, anna).
rodzic(adam, joanna).
rodzic(adam, krzysztof).
rodzic(robert, radek).
rodzic(robert, beata).
rodzic(agata, radek).
rodzic(agata, beata).
rodzic(jan, darek).
rodzic(jan, tomek).
rodzic(anna, darek).
rodzic(anna, tomek).
rodzic(krzysztof, jacek).
rodzic(krzysztof, iwona).
rodzic(agnieszka, jacek).
rodzic(agnieszka, iwona).

malzenstwo(maria, piotr).
malzenstwo(ewa, adam).
malzenstwo(robert, agata).
malzenstwo(jan, anna).
malzenstwo(krzysztof, agnieszka).

matka(X, Y) :- kobieta(X), rodzic(X, Y).
ojciec(X, Y) :- mezczyzna(X), rodzic(X, Y).

rodzenstwo(X, Y) :- rodzic(Z, X), rodzic(Z, Y), X \= Y.
siostra(X, Y) :- kobieta(X), rodzenstwo(X, Y).
brat(X, Y) :- mezczyzna(X), rodzenstwo(X, Y).

babcia(X, Y) :- kobieta(X), rodzic(X, Z), rodzic(Z, Y).
dziadek(X, Y) :- mezczyzna(X), rodzic(X, Z), rodzic(Z, Y).

wuj(X, Y) :- matka(Z, Y), brat(X, Z).
stryj(X, Y) :- ojciec(Z, Y), brat(X, Z).

kuzynostwo(X, Y) :- rodzic(Z, X), rodzic(Ź, Y), rodzenstwo(Z, Ź).
kuzyn(X, Y) :- mezczyzna(X), kuzynostwo(X, Y).
kuzynka(X, Y) :- kobieta(X), kuzynostwo(X, Y).

maz(X, Y) :- mezczyzna(X), malzenstwo(X, Y).
maz(X, Y) :- mezczyzna(X), malzenstwo(Y, X).
zona(X, Y) :- kobieta(X), malzenstwo(X, Y).
zona(X, Y) :- kobieta(X), malzenstwo(Y, X).

tesciowa(X, Y) :- zona(Z, Y), matka(X, Z).
%szwagier
%brat zony
%maz siostry
