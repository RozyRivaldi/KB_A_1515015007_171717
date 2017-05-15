DOMAINS
set = string*
shero1 = string*
shero2 = string*
shero3 = string*
shero4 = string*
shero5 = string*
shero6 = string*

nama,kelas = string
nim= integer
a = char
kelompok = 
anggota1(nama,nim,kelas);
anggota2(nama,nim,kelas);
anggota3(nama,nim,kelas)

FACTS
nondeterm set(set)
nondeterm hero1(shero1)
nondeterm hero2(shero2)
nondeterm hero3(shero3)
nondeterm hero4(shero4)
nondeterm hero5(shero5)
nondeterm hero6(shero6)

nondeterm data_kelompok(kelompok)

PREDICATES
nondeterm opsi(char)
nondeterm opsi1
nondeterm opsi2
nondeterm opsi3
nondeterm opsi4
nondeterm opsi5
nondeterm opsi6

nondeterm dota1
nondeterm dota2
nondeterm dota3
nondeterm dota4
nondeterm dota5
nondeterm dota6


nondeterm thanks
nondeterm awal
nondeterm lanjut1(char)
nondeterm lanjut2(char)
nondeterm lanjut3(char)
nondeterm lanjut4(char)
nondeterm lanjut5(char)
nondeterm lanjut6(char)

nondeterm kembali1(char)
nondeterm kembali2(char)
nondeterm kembali3(char)
nondeterm kembali4(char)
nondeterm kembali5(char)
nondeterm kembali6(char)


nondeterm akhir(char)
nondeterm detail_data_kelompok
proses1(a,a)
proses2(a,a)
proses3(a,a)

CLAUSES
proses1(X,X):- !. /*cut*/
proses1(_,_):- fail. /*backtrack*/

detail_data_kelompok:-data_kelompok(anggota1(A1,B1,C1)),
data_kelompok(anggota2(A2,B2,C2)),
data_kelompok(anggota3(A3,B3,C3)),

write(" \n\n==========ANGGOTA KELOMPOK========== "),
write(" \n\nNAMA : ",A1," \nIMN : ",B1," \nKELAS : ",C1),
write(" \n\nNAMA : ",A2," \nIMN : ",B2," \nKELAS : ",C2),
write(" \n\nNAMA : ",A3," \nIMN : ",B3," \nKELAS : ",C3),
nl,nl.

awal:- 
detail_data_kelompok,set([H1|[H2|[H3|[H4|[H5|[H6|_]]]]]]),
write("\n\n==========SISTEM INFORMASI SET HERO DOTA 2=========="),
write("\n\n SILAHKAN PILIH SET YANG ANDA INGINKAN \n\n"),
write(" PILIH SALAH SATU : \n"),
write(H1,H2,H3,H4,H5,H6),
readchar(B),opsi(B).

opsi(B):- proses1(B, '1'),opsi1. /*backtrack*/
opsi(B):- proses1(B, '2'),opsi2.
opsi(B):- proses1(B, '3'),opsi3.
opsi(B):- proses1(B, '4'),opsi4.
opsi(B):- proses1(B, '5'),opsi5.
opsi(B):- proses1(B, '6'),opsi6.
opsi(_):- awal.

opsi1:-
write(" \n\nPILIHAN ANDA ADALAH ARCANA\n"),
write(" \n\nSet Arcana termasuk barang langka di Dota 2. Mereka hadir dengan penyesuaian ekstensif seperti efek partikel, animasi, ikon, suara, dan lainnya. Item Arcana tidak bisa dihapus di gudang persenjataan.\n"),
write(" TEKAN TOMBOL 'L' UNTUK MELIHAT HERO ! \n"),
readchar(A),lanjut1(A).

lanjut1(A):- proses1(A, 'L'),dota1. /*backtrack*/
lanjut1(A):- proses1(A, 'l'),dota1.
lanjut1(_):- opsi1.

opsi2:-
write(" \n\nPILIHAN ANDA ADALAH LEGENDARY\n"),
write("\n\nSet legendaris Dalam resep kerajinan, ini berarti item Legendaris.\n"),
write(" TEKAN TOMBOL 'L' UNTUK MELIHAT HERO ! \n"),
readchar(A),lanjut2(A).

lanjut2(A):- proses1(A, 'L'),dota2. /*backtrack*/
lanjut2(A):- proses1(A, 'l'),dota2.
lanjut2(_):- opsi1.

opsi3:-
write(" \n\nPILIHAN ANDA ADALAH MYTHICAL\n"),
write("\n\nSet mitos Dalam resep kerajinan, ini berarti item Mythical\n"),
write(" TEKAN TOMBOL 'L' UNTUK MELIHAT HERO ! \n"),
readchar(A),lanjut3(A).

lanjut3(A):- proses1(A, 'L'),dota3. /*backtrack*/
lanjut3(A):- proses1(A, 'l'),dota3.
lanjut3(_):- opsi3.

opsi4:-
write(" \n\nPILIHAN ANDA ADALAH IMMORTAL\n"),
write("\n\nSemua set yang tergolong langka Immortal. Set ini biasanya dilepaskan bersamaan dengan acara Valve-organized (yaitu The International and Majors) dan umumnya mencakup ikon kemampuan, efek dan animasi kustom\n"),
write(" TEKAN TOMBOL 'L' UNTUK MELIHAT HERO ! \n"),
readchar(A),lanjut4(A).

lanjut4(A):- proses1(A, 'L'),dota4. /*backtrack*/
lanjut4(A):- proses1(A, 'l'),dota4.
lanjut4(_):- opsi4.

opsi5:-
write(" \n\nPILIHAN ANDA ADALAH Rare\n"),
write("\n\nSet rare adalah milik barang kosmetik. Ini diwakili dalam game dengan tema warna item\n"),
write(" TEKAN TOMBOL 'L' UNTUK MELIHAT HERO ! \n"),
readchar(A),lanjut5(A).

lanjut5(A):- proses1(A, 'L'),dota5. /*backtrack*/
lanjut5(A):- proses1(A, 'l'),dota5.
lanjut5(_):- opsi1.

opsi6:-
write(" \n\nPILIHAN ANDA ADALAH COMMON\n"),
write("\n\nSet biasa Dalam resep kerajinan, ini berarti barang biasa\n"),
write(" TEKAN TOMBOL 'L' UNTUK MELIHAT HERO ! \n"),
readchar(A),lanjut6(A).

lanjut6(A):- proses1(A, 'L'),dota6. 
lanjut6(A):- proses1(A, 'l'),dota6.
lanjut6(_):- opsi6.


proses2(A,A):-!. /*cut*/
proses2(_,_):-fail. /*backtrack*/

dota1:-
write(" \n\nARCANA : \n\n"),
hero1([H1|[H2|[H3|[H4|[H5|[H6|_]]]]]]),
write(H1,H2,H3,H4,H5,H6),
write(" APAKAH ANDA INGIN MELIHAT SET HERO LAINNYA??? (Y/T)\n"),
readchar(A),kembali1(A).

kembali1(A):- proses2(A, 'Y'),awal.
kembali1(A):- proses2(A, 'y'),awal.
kembali1(A):- proses2(A, 'T'),thanks.
kembali1(A):- proses2(A, 't'),thanks.
kembali1(_):- dota1.

dota2:-
write(" \n\nLEGENDARY : \n\n"),
hero2([H1|[H2|[H3|[H4|[H5|[H6|_]]]]]]),
write(H1,H2,H3,H4,H5,H6),
write(" APAKAH ANDA INGIN MELIHAT SET HERO LAINNYA??? (Y/T)\n"),
readchar(A),kembali2(A).

kembali2(A):- proses2(A, 'Y'),awal.
kembali2(A):- proses2(A, 'y'),awal.
kembali2(A):- proses2(A, 'T'),thanks.
kembali2(A):- proses2(A, 't'),thanks.
kembali2(_):- dota2.

dota3:-
write(" \n\nMYTHICAL : \n\n"),
hero3([H1|[H2|[H3|[H4|[H5|[H6|_]]]]]]),
write(H1,H2,H3,H4,H5,H6),
write(" APAKAH ANDA INGIN MELIHAT SET HERO LAINNYA??? (Y/T)\n"),
readchar(A),kembali3(A).

kembali3(A):- proses2(A, 'Y'),awal.
kembali3(A):- proses2(A, 'y'),awal.
kembali3(A):- proses2(A, 'T'),thanks.
kembali3(A):- proses2(A, 't'),thanks.
kembali3(_):- dota3.

dota4:-
write(" \n\nIMMORTAL : \n\n"),
hero4([H1|[H2|[H3|[H4|[H5|[H6|_]]]]]]),
write(H1,H2,H3,H4,H5,H6),
write(" APAKAH ANDA INGIN MELIHAT SET HERO LAINNYA??? (Y/T)\n"),
readchar(A),kembali4(A).

kembali4(A):- proses2(A, 'Y'),awal.
kembali4(A):- proses2(A, 'y'),awal.
kembali4(A):- proses2(A, 'T'),thanks.
kembali4(A):- proses2(A, 't'),thanks.
kembali4(_):- dota4.

dota5:-
write(" \n\nRARE : \n\n"),
hero5([H1|[H2|[H3|[H4|[H5|[H6|_]]]]]]),
write(H1,H2,H3,H4,H5,H6),
write(" APAKAH ANDA INGIN MELIHAT SET HERO LAINNYA??? (Y/T)\n"),
readchar(A),kembali5(A).

kembali5(A):- proses2(A, 'Y'),awal.
kembali5(A):- proses2(A, 'y'),awal.
kembali5(A):- proses2(A, 'T'),thanks.
kembali5(A):- proses2(A, 't'),thanks.
kembali5(_):- dota5.

dota6:-
write(" \n\nCOMMON : \n\n"),
hero6([H1|[H2|[H3|[H4|[H5|[H6|_]]]]]]),
write(H1,H2,H3,H4,H5,H6),
write(" APAKAH ANDA INGIN MELIHAT SET HERO LAINNYA??? (Y/T)\n"),
readchar(A),kembali6(A).

kembali6(A):- proses2(A, 'Y'),awal.
kembali6(A):- proses2(A, 'y'),awal.
kembali6(A):- proses2(A, 'T'),thanks.
kembali6(A):- proses2(A, 't'),thanks.
kembali6(_):- dota6.


proses3(A,A):-!. 
proses3(_,_):-fail.

thanks:-
write(" TERIMA KASIH\n"),
write(" TEKAN TOMBOL 'A' UNTUK KE MENU AWAL\n"),
write(" TEKAN TOMBOL 'Q' UNTUK KELUAR DARI PROGRAM. \n"),
readchar(A),akhir(A).

akhir(A):-proses3(A, 'A'),awal.
akhir(A):-proses3(A, 'a'),awal.
akhir(A):-proses3(A, 'Q'),exit.
akhir(A):-proses3(A, 'q'),exit.
akhir(_):-thanks.

GOAL
consult("data.db"),
awal.
