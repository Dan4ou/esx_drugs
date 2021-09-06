USE `essentialmode`;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('cannabis', 'Канабис', 1, 60, 1),
	('marijuana', 'Марихуана', 1, 60, 1),
	('chemicals', 'Химикали', 1, 60, 1),
	('chemicalslisence', 'Лиценз за химикали', 1, 60, 1),
	('moneywash', 'Лиценз за пране на пари', 1, 0, 1),
	('coca_leaf', 'Листо Кокаин', 1, 60, 1),
	('coke', 'Кокаин', 1, 60, 1),
	('poppyresin', 'Маково семе', 1, 0, 1),
	('heroin', 'Хероин', 1, 60, 1),
	('lsa', 'LSA', 1, 60, 1),
	('lsd', 'LSD', 1, 60, 1),
	('meth', 'Метамфетамин', 1, 60, 1),
	('hydrochloric_acid', 'Солна киселина', 1, 0, 1),
	('sodium_hydroxide', 'Натриев хидроксид', 1, 0, 1),
	('sulfuric_acid', 'Сярна киселина', 1, 0, 1),
	('thionyl_chloride', 'Тионил хлорид', 1, 0, 1)
;

INSERT INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Лиценз за преобработка на канабис')
	('chemicalslisence', 'Лиценз за химикали')
;