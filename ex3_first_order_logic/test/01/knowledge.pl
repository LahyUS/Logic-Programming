male(prince_phillip).
male(prince_charles).
male(prince_andrew).
male(prince_edward).
male(paptain_mark_phillips).
male(timothy_laurence).
male(prince_william).
male(prince_harry).
male(peter_phillips).
male(james_viscount_severn).
male(mike_tindall).
male(prince_seorge).

female(queen_elizabethII).
female(princess_anne).
female(princess_diana).
female(camilla_parker_bowles).
female(sarah_ferguson).
female(sophie_rhys_jones).
female(kate_middleton).
female(autumn_kelly).
female(zara_phillips).
female(princess_beatrice).
female(princess_eugenie).
female(lady_louise_mountbatten_windsor).
female(princess_charlotte).
female(savannah_phillips).
female(isla_phillips).
female(mia_grace_tindall).

parent(queen_elizabethII, prince_charles).
parent(prince_phillip, prince_charles).
parent(queen_elizabethII, prince_andrew).
parent(prince_phillip, prince_andrew).
parent(queen_elizabethII, princess_anne).
parent(prince_phillip, princess_anne).
parent(queen_elizabethII, prince_edward).
parent(prince_phillip, prince_edward).

parent(princess_diana, prince_william).
parent(prince_charles, prince_william).
parent(princess_diana, prince_harry).
parent(prince_charles, prince_harry).

parent(captain_mark_phillips, peter_phillips).
parent(princess_anne, peter_phillips).
parent(captain_mark_phillips, zara_phillips).
parent(princess_anne, zara_phillips).

parent(prince_andrew, princess_eugenie).
parent(sarah_ferguson, princess_eugenie).
parent(prince_andrew, princess_beatrice).
parent(sarah_ferguson, princess_beatrice).

parent(prince_edward, lady_louise_mountbatten_winndsor).
parent(sophie_rhys_jones, lady_louise_mountbatten_windsor).
parent(prince_edward, james_viscount_severn).
parent(sophie_rhys_jones, james_viscount_severn).

parent(kate_middleton, prince_george).
parent(prince_william, prince_george).
parent(kate_middleton, princess_charlotte).
parent(prince_william, princess_charlotte).

parent(autumn_kelly,savannah_phillips).
parent(peter_phillips,savannah_phillips).
parent(autumn_kelly,isla_phillips).
parent(peter_phillips,isla_phillips).

parent(mike_tindall,mia_grace_tindall).
parent(zara_phillips,mia_grace_tindall).

husband(Person,Wife) :- married(Person,Wife), male(Person).
wife(Person,Husband) :- married(Person,Husband), female(Person).

father(Parent,Child) :- parent(Parent,Child), male(Parent).
mother(Parent,Child) :- parent(Parent,Child), female(Parent).

child(Child,Parent) :- parent(Parent,Child).
son(Child,Parent) :- child(Child,Parent), male(Child).
daughter(Child,Parent) :- child(Child,Parent), female(Child).

grandparent(GP,GC) :- parent(GP,Parent), parent(Parent,GC).
grandmother(GM,GC) :- grandparent(GM,GC), female(GM).
grandfather(GF,GC) :- grandparent(GF,GC), male(GF).

grandchild(GC,GP) :- grandparent(GP,GC).
grandson(GS,GP) :- grandchild(GS,GP),male(GS).
granddaughter(GD,GP) :- grandchild(GD,GP), female(GD).

brother(Person,Sibling) :- sibling(Person, Sibling), male(Person).
sister(Person,Sibling) :- sibling(Person, Sibling), female(Person).

