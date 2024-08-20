--====================================================================
--Relational Schema﻿===================================================
--====================================================================
Guardian(id, Class﻿Name)
WeaponType(id Name)
Weapon(Name, id, Element, Slot)

Subclass(id, Name, Element)
--====================================================================
--Data Definition Language (DDL)======================================
--====================================================================
create table Guardian(
id primary key,
ClassName varchar(30)
);

create table WeaponType(
id primary key,
Name varchar(50)
);

create table Weapon(
Name varchar(50),
id int,
Element varchar(20),
Slot int,
foreign key (id) REFERENCES WeaponType(id)
);

create table Subclass(
id int,
Name varchar(20) NOT NULL, 
Element varchar(10),
foreign key (id) REFERENCES Guardian(id)
);
--====================================================================
--DML: Populating tables==============================================
--====================================================================
--===================================
--Guardian
--===================================
insert into Guardian values (1, 'Warlock');
insert into Guardian values (2, 'Hunter');
insert into Guardian values (3, 'Titan');
--===================================
--Subclass
--===================================
insert into Subclass values (1, 1, 'Dawnblade', 'Solar');
insert into Subclass values (2, 1, 'Stormcaller', 'Arc');
insert into Subclass values (3, 1, 'Voidwalker', 'Void');
insert into Subclass values (4, 1, 'Shadebinder', 'Stasis');

insert into Subclass values (5, 2, 'Gunslinger', 'Solar');
insert into Subclass values (6, 2, 'Arcstrider', 'Arc');
insert into Subclass values (7, 2, 'Nightstalker', 'Void');
insert into Subclass values (8, 2, 'Revenant', 'Stasis');

insert into Subclass values (9, 3, 'Sunbeaker', 'Solar');
insert into Subclass values (10, 3, 'Striker', 'Arc');
insert into Subclass values (11, 3, 'Sentinel', 'Void');
insert into Subclass values (12, 3, 'Behemoth', 'Stasis');
--===================================
--WeaponType
--===================================
insert into WeaponType values(1, 'Handcannon');
insert into WeaponType values(2, 'Pulse Rifles');
insert into WeaponType values(3, 'Auto Rifles');
insert into WeaponType values(4, 'Scout Rifles');
insert into WeaponType values(5, 'Submachine Guns');
insert into WeaponType values(6, 'Sidearms');
insert into WeaponType values(7, 'Bows');
insert into WeaponType values(8, 'Shotguns');
insert into WeaponType values(9, 'Sniper Rifles');
insert into WeaponType values(10, 'Fusion Rifles');
insert into WeaponType values(11, 'Rocket Launchers');
insert into WeaponType values(12, 'Machine Guns');
insert into WeaponType values(13, 'Linear Fusion Rifles');
insert into WeaponType values(14, 'Trace Rifles');
insert into WeaponType values(15, 'Swords');
insert into WeaponType values(16, 'Grenade Launchers');
--===================================
--Weapon
--===================================
insert into Weapon values("Traveler's Chosen", 6, NULL, "Kinetic");
insert into Weapon values("False Promises", 3, NULL, "Kinetic");
insert into Weapon values("The Forward Path", 3, NULL, "Kinetic");
insert into Weapon values("Whispering Slab", 7, NULL, "Kinetic");
insert into Weapon values("Cold Denial", 2, NULL, "Kinetic");
insert into Weapon values("Ikelos_HC_V1.0.2", 1, "Void", "Energy");
insert into Weapon values("Nature of the Beast", 1, "Arc", "Energy");
insert into Weapon values("The Fool's Remedy", 6, "Solar", "Energy");
insert into Weapon values("Death Adder", 5, "Solar", "Energy");
insert into Weapon values("Ikelos_SMG_V1.0.2", 5, "Arc", "Energy");
insert into Weapon values("The Scholar", 4, NULL, "Kinetic");
insert into Weapon values("The Summoner", 3, "Solar", "Energy");
insert into Weapon values("Khvostov 7G-02", 3, NULL, "Kinetic");
insert into Weapon values("Sorrow MG2", 5, "Arc", "Energy");
insert into Weapon values("Suros Throwback", 3, NULL, "Kinetic");
insert into Weapon values("Minuet-12", 1, "Solar", "Energy");
insert into Weapon values("Sea Scorpion-1SR", 4, "Arc", "Energy");
insert into Weapon values("Sondok-C", 5, NULL, "Kinetic");
insert into Weapon values("Lionheart", 3, NULL, "Kinetic");
insert into Weapon values("Witherhoard", 16, NULL, "Kinetic");
insert into Weapon values("Ruinous Effigy", 14, "Void", "Energy");
insert into Weapon values("Hollow Words", 10, "Arc", "Energy");
insert into Weapon values("Truthteller", 16, "Void", "Energy");
insert into Weapon values("First In, Last Out", 8, "Arc", "Energy");
insert into Weapon values("Ikelos_SG_V1.0.2", 8, "Solar", "Energy");
insert into Weapon values("Ikelos_SR_V1.0.2", 9, "Solar", "Energy");
insert into Weapon values("Widow's Bite", 9, "Solar", "Energy");
insert into Weapon values("Astral Horizon", 8, NULL, "Kinetic");
insert into Weapon values("Eye of Sol", 9,  NULL, "Kinetic");
insert into Weapon values("Exile's Curse", 10,  "Arc", "Energy");
--====================================================================
--DML SQL Queries=====================================================
--====================================================================
--shows what Guardian class corresponds to what subclass (join with 2 tables)
select G.ClassName as Class, S.Name as Name, S.Element as Element
from Guardian as G INNER JOIN Subclass as S ON G.Guardian_PK = S.Guardian_FK

--shows what Submachine Guns are there (join with 2 tables with filtering condition)
select W2.Name as Name, W2.Rarity, W2.Intrinsic, W2.Element
from WeaponType as W1 INNER JOIN Weapon as W2 ON W1.WT_PK = W2.WT_FK
where W1.Name = "Submachine Guns"

--shows what class ability and jumps do each class have (join with 3 tables)
select G.ClassName as Class, C.Name as Ability, J.Name as Jump
from Guardian as G, ClassAbility as C, JumpAbility as J
where G.Guardian_PK = C.G_FK and G.Guardian_PK = J.G_FK

--shows each class's abilities and subclasses (join with 5 tables)
SELECT G.ClassName AS Class, C.Name AS Ability, J.Name AS Jump, S.Name as Subclass, T.Type as Tree
FROM Guardian AS G, ClassAbility AS C, JumpAbility AS J, Subclass as S, Trees as T
WHERE G.Guardian_PK = C.G_FK and G.Guardian_PK = J.G_FK and S.Guardian_FK = G.Guardian_PK and S.SC_pk = T.SC_FK

--shows each weapon's type, ammo, slot (join with 4 tables)
select W1.Name as Type, W2.Name as Name, A.Name as Ammo, S.Name as Slot
from WeaponType as W1, Weapon as W2, AmmoType as A, Slot as S
where W1.WT_PK = W2.WT_FK and W2.Ammo_FK = A.Ammo_PK and W2.Slot_FK = S.Slot_PK

--shows alls kinetic primary weapons (join with 4 tables with 2 filtering condition)
select W1.Name as Type, W2.Name as Name, A.Name as Ammo, S.Name as Slot
from WeaponType as W1, Weapon as W2, AmmoType as A, Slot as S
where W1.WT_PK = W2.WT_FK and W2.Ammo_FK = A.Ammo_PK and W2.Slot_FK = S.Slot_PK
and A.Name = "Primary" and S.Name = "Energy"

--shows all kinetic primary handcannos (join with 4 tables with 3 filtering conditions)
SELECT W1.Name AS Type, W2.Name AS Name, A.Name AS Amo, S.Name AS Slot
FROM WeaponType AS W1, Weapon AS W2, AmmoType AS A, Slot AS S
WHERE W1.WT_PK = W2.WT_FK and W2.Ammo_FK = A.Ammo_PK and W2.Slot_FK = S.Slot_PK
and A.Name = "Primary" and S.Name = "Energy" and W1.Name = "Handcannon"

--counts how many of each weapon types (calculating using COUNT aggregate with a group by)
SELECT W1.Name, count(W1.Name) as NumWeaponTypes
FROM WeaponType AS W1, Weapon AS W2
WHERE W1.WT_PK = W2.WT_FK
group by W1.Name

--shows the count of special weapons if there are more than 3 (using a count aggregate with a group by and having)
SELECT W1.Name, count(W1.Name) as NumWeaponTypes
FROM WeaponType AS W1, Weapon AS W2, AmmoType AS A, Slot AS S
WHERE W1.WT_PK = W2.WT_FK and W2.Ammo_FK = A.Ammo_PK and W2.Slot_FK = S.Slot_PK
and A.Name = "Special"
group by W1.Name
having count(W1.Name) > 3

--shows what Warlock subclass has 1 tree (count aggregate with a group by and having)
select S.Name as Subclass
from Guardian as G, Subclass as S, Trees as T
where G.Guardian_PK = S.Guardian_FK and S.SC_PK = T.SC_FK 
and G.ClassName = "Warlock"
group by S.Name
having count(T.Type) = 1
