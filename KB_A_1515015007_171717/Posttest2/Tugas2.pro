predicates
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
nondeterm adik(STRING,SYMBOL)
nondeterm usia(STRING,SYMBOL)

CLAUSES
anak("Jhon","James").
anak("James","Peter").
anak("Sue","Ann").

istri("Mary","Peter").
istri("Ann","James").

pria("Jhon").
pria("James").
pria("Peter").

wanita("Mary").
wanita("Sue").
wanita("Ann").

usia("Jhon","10").
usia("Sue","13").

ayah(R,O):-
	anak(O,R).
kakek(R,O):-
	ayah(R,Z),ayah(Z,O).
ibu(R,O):-
	istri(O,Z),anak(R,Y).
cucu(R,O):-
	anak(R,Z),istri(Z,Y),anak(Y,O).
adik(R,O):-
	usia(R,Z),usia(O,Y),Z<Y.


Goal
Adik(Pertama,Kedua).