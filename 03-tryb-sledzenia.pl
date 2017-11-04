ptak(X) :- pokrycie(X, piora), latanie(X).
pokrycie(kurwa, piora).
pokrycie(wrobel, piora).
chodzenie(kura).
latanie(wrobel).

%w konsoli ?- trace, ptak(wrobel)
