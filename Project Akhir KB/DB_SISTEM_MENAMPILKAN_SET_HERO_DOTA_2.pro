DOMAINS
set = string*
shero1 = string*
shero2 = string*
shero3 = string*
shero4 = string*
shero5 = string*
shero6 = string*

nama,kelas = string
nim = integer
kelompok = anggota1(nama,nim,kelas);
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

CLAUSES
data_kelompok(anggota1("Rozy Rivaldi",1515015007,"A'2015")).
data_kelompok(anggota2("Gilbert Pranajaya Z",1515015011,"A'2015")).
data_kelompok(anggota3("Febrina Anissa A",1515015029,"A'2015")).


set(["1. Arcana\n", /*list*/
"2. Legendary\n",
"3. Mythical\n",
"4. Immortal\n",
"5. Rare\n",
"6. Common\n"]).

hero1(["1. Phantom Assasin\n",
"2. Shadow fiend \n",
"3. Juggernaut.\n",
"4. Zeus.\n",
"5. Crystal meiden.\n",
"6. Monkey King.\n"]).

hero2(["1. Phantom Assasin\n",
"2. Shadow fiend \n",
"3. Juggernaut.\n",
"4. Zeus.\n",
"5. Ogre Magi.\n",
"6. Anti-Mage.\n"]).

hero3(["1. Lina\n",
"2. Vengeful Spirit \n",
"3. Distruptor.\n",
"4. Alcheimist.\n",
"5. Dragon Knight.\n",
"6. Luna.\n"]).

hero4(["1. Phantom Lancer\n",
"2. Ogre Magi \n",
"3. Slardar.\n",
"4. Slark.\n",
"5. Crystal meiden.\n",
"6. Shadow Fiend.\n"]).

hero5(["1. Nyx Assasin\n",
"2. Tidehunter \n",
"3. Tinker.\n",
"4. Timbersaw.\n",
"5. Abbadon.\n",
"6. Chaos Knight.\n"]).

hero6(["1. Mirana.\n",
"2. Luna. \n",
"3. Dazzle.\n",
"4. Witc Doctor.\n",
"5. Crystal meiden.\n",
"6. Silencer.\n"]).


GOAL
save("data.db"),
write("OHYEAH\n").
