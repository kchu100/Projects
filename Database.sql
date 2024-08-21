--====================================================================
--Relational Schema﻿===================================================
--====================================================================
Guardian(id, Class﻿Name)
WeaponType(id Name)
Weapon(Name, id, Element, Slot)

Subclass(id, Name, Element)
--====================================================================
--Data Definition Language (DDL)======================================
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
insert into Subclass values (1, 'Dawnblade', 'Solar');
insert into Subclass values (1, 'Stormcaller', 'Arc');
insert into Subclass values (1, 'Voidwalker', 'Void');
insert into Subclass values (1, 'Shadebinder', 'Stasis');

insert into Subclass values (2, 'Gunslinger', 'Solar');
insert into Subclass values (2, 'Arcstrider', 'Arc');
insert into Subclass values (2, 'Nightstalker', 'Void');
insert into Subclass values (2, 'Revenant', 'Stasis');

insert into Subclass values (3, 'Sunbeaker', 'Solar');
insert into Subclass values (3, 'Striker', 'Arc');
insert into Subclass values (3, 'Sentinel', 'Void');
insert into Subclass values (3, 'Behemoth', 'Stasis');
--===================================
--WeaponType
--===================================
insert into WeaponType values(1, 'Handcannon');
insert into WeaponType values(2, 'Pulse Rifle');
insert into WeaponType values(3, 'Auto Rifle');
insert into WeaponType values(4, 'Scout Rifle');
insert into WeaponType values(5, 'Submachine Gun');
insert into WeaponType values(6, 'Sidearm');
insert into WeaponType values(7, 'Bow');
insert into WeaponType values(8, 'Shotgun');
insert into WeaponType values(9, 'Sniper Rifle');
insert into WeaponType values(10, 'Fusion Rifle');
insert into WeaponType values(11, 'Rocket Launcher');
insert into WeaponType values(12, 'Machine Gun');
insert into WeaponType values(13, 'Linear Fusion Rifle');
insert into WeaponType values(14, 'Trace Rifle');
insert into WeaponType values(15, 'Sword');
insert into WeaponType values(16, 'Grenade Launcher');
insert into WeaponType values(17, 'Glaive');
--===================================
--Weapon
--===================================
insert into Weapon values("Smite of Merain", 2, NULL, "Kinetic");
insert into Weapon values("Doom of Chelchis", 4, "Void", "Energy");
insert into Weapon values("Zaouli's Bane", 1, "Solar", "Energy");
insert into Weapon values("Midha's Reckoning", 10, "Arc", "Energy");
insert into Weapon values("Defiance of Yasmin", 9, NULL, "Kinetic");
insert into Weapon values("Quillim's Terminus", 12, "Stasis", "Power");

insert into Weapon values("Acasia's Dejection", 14, "Solar", "Energy");
insert into Weapon values("Mykel's Reverence", 6, "Strand", "Kinetic");
insert into Weapon values("Nessa's Oblation", 8, "Void", "Energy");
insert into Weapon values("Briar's Contempt", 13, "Solar", "Power");
insert into Weapon values("Koraxis's Distress", 16, "Strand", "Power");
insert into Weapon values("Rufus's Fury", 3, "Strand", "Kinetic");

insert into Weapon values("Summum Bonum", 15, "Arc", "Power");
insert into Weapon values("Forthcoming Deviance", 17, "Void", "Energy");
insert into Weapon values("Critical Anomaly", 9, "Stasis", "Kinetic");
insert into Weapon values("Non-Denouement", 7, "Arc", "Energy");
insert into Weapon values("Nullify", 2, "Solar", "Energy");
insert into Weapon values("Imminence", 5, "Strand", "Kinetic");

insert into Weapon values("Warden's Law", 1, NULL, "Kinetic");
insert into Weapon values("Pre Astyanax IV", 7, "Solar", "Energy");
insert into Weapon values("Undercurrent", 16, "Arc", "Energy");
insert into Weapon values("Uzume RR4", 9, "Solar", "Energy");
insert into Weapon values("The Slammer", 15, "Stasis", "Power");
insert into Weapon values("Wild Style", 16, "Solar", "Energy");
insert into Weapon values("Scintillation", 13, "Strand", "Power");
insert into Weapon values("The Palindrome", 1, "Void", "Energy");
insert into Weapon values("Shadow Price", 3, "Arc", "Energy");
insert into Weapon values("Plug One.1", 10, "Arc", "Energy");
insert into Weapon values("The Comedian", 8, "Void", "Energy");
insert into Weapon values("The Hothead", 11, "Arc", "Power");
insert into Weapon values("Duty Bound", 3, NULL, "Kinetic");
insert into Weapon values("Silicon Neuroma", 9, NULL, "Kinetic");
insert into Weapon values("D.F.A", 1, NULL, "Kinetic");
insert into Weapon values("Horror's Least", 2, "Arc", "Energy");
insert into Weapon values("The Militia's Birthright", 16, NULL, "Kinetic");
insert into Weapon values("Mindbender's Ambition", 8, "Solar", "Energy");
insert into Weapon values("Hung Jury SR4", 4, NULL, "Kinetic");
insert into Weapon values("Wendigo GL3", 16, "Arc", "Power");
insert into Weapon values("Braytech Osprey", 11, "Void", "Power");
insert into Weapon values("The Swarm", 12, "Arc", "Power");
insert into Weapon values("Buzzard", 6, NULL, "Kinetic");
insert into Weapon values("Loaded Question", 10, "Arc", "Energy");

insert into Weapon values("Tomorrow's Answer", 11, "Void", "Power");
insert into Weapon values("Incisor", 14, "Strand", "Kinetic");
insert into Weapon values("The Prophet", 4, "Stasis", "Kinetic");
insert into Weapon values("Shayura's Wrath", 5, "Void", "Energy");
insert into Weapon values("Astral Horizon", 8, NULL, "Kinetic");
insert into Weapon values("Eye of Sol", 9,  NULL, "Kinetic");
insert into Weapon values("Exile's Curse", 10,  "Arc", "Energy");
insert into Weapon values("The Scholar", 4, NULL, "Kinetic");
insert into Weapon values("The Summoner", 3, "Solar", "Energy");
insert into Weapon values("Igneous Hammer", 1, "Solar", "Energy");
insert into Weapon values("Exalted Truth", 1, "Void", "Energy");
insert into Weapon values("The Messenger", 2, NULL, "Kinetic");
insert into Weapon values("Reed's Regret", 13, "Stasis", "Power");
insert into Weapon values("Cataphract GL3", 16, "Strand", "Power");
insert into Weapon values("Unwavering Duty", 12, "Solar", "Power");
insert into Weapon values("Sola's Scar", 15, "Solar", "Power");
insert into Weapon values("Unexpected Resurgence", 17, "Arc", "Energy");
insert into Weapon values("The Immortal", 5, "Strand", "Kinetic");
insert into Weapon values("Whistler's Whim", 7, NULL, "Kinetic");
insert into Weapon values("The Inquisitor", 8, "Arc", "Energy");
insert into Weapon values("Forgiveness", 6, "Arc", "Energy");
insert into Weapon values("Burden of Guilt", 10, "Stasis", "Kinetic");
insert into Weapon values("Aisha's Embrace", 4, "Void", "Energy");
insert into Weapon values("Aisha's Care", 2, "Strand", "Kinetic");
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
