-- Flavor Nuke

-- Delete all old flavors...
DELETE FROM Policy_Flavors;


-- And then redo them!

INSERT INTO Policy_Flavors
	(PolicyType, FlavorType, Flavor)
VALUES
	('POLICY_LIBERTY', 'FLAVOR_GOLD', 7),
	('POLICY_LIBERTY', 'FLAVOR_PRODUCTION', 7),
	('POLICY_LIBERTY', 'FLAVOR_SCIENCE', 7),
	('POLICY_LIBERTY', 'FLAVOR_TILE_IMPROVEMENT', 7),
	('POLICY_COLLECTIVE_RULE', 'FLAVOR_GROWTH', 5),
	('POLICY_COLLECTIVE_RULE', 'FLAVOR_SCIENCE', 5),
	('POLICY_CITIZENSHIP', 'FLAVOR_TILE_IMPROVEMENT', 5),
	('POLICY_CITIZENSHIP', 'FLAVOR_EXPANSION', 5),
	('POLICY_REPUBLIC', 'FLAVOR_PRODUCTION', 5),
	('POLICY_REPUBLIC', 'FLAVOR_GOLD', 5),
	('POLICY_REPRESENTATION', 'FLAVOR_HAPPINESS', 5),
	('POLICY_REPRESENTATION', 'FLAVOR_EXPANSION', 5),
	('POLICY_MERITOCRACY', 'FLAVOR_INFRASTRUCTURE', 5),
	('POLICY_MERITOCRACY', 'FLAVOR_EXPANSION', 5),
	('POLICY_TRADITION', 'FLAVOR_CULTURE', 7),
	('POLICY_TRADITION', 'FLAVOR_GROWTH', 7),
	('POLICY_TRADITION', 'FLAVOR_GREAT_PEOPLE', 7),
	('POLICY_TRADITION', 'FLAVOR_WONDER', 7),
	('POLICY_ARISTOCRACY', 'FLAVOR_PRODUCTION', 5),
	('POLICY_ARISTOCRACY', 'FLAVOR_DEFENSE', 5),
	('POLICY_OLIGARCHY', 'FLAVOR_RECON', 5),
	('POLICY_OLIGARCHY', 'FLAVOR_EXPANSION', 5),
	('POLICY_LEGALISM', 'FLAVOR_HAPPINESS', 5),
	('POLICY_LEGALISM', 'FLAVOR_SCIENCE', 5),
	('POLICY_LANDED_ELITE', 'FLAVOR_GREAT_PEOPLE', 5),
	('POLICY_LANDED_ELITE', 'FLAVOR_CULTURE', 5),
	('POLICY_MONARCHY', 'FLAVOR_GREAT_PEOPLE', 5),
	('POLICY_MONARCHY', 'FLAVOR_GOLD', 5),
	('POLICY_HONOR', 'FLAVOR_MILITARY_TRAINING', 7),
	('POLICY_HONOR', 'FLAVOR_OFFENSE', 7),
	('POLICY_HONOR', 'FLAVOR_DEFENSE', 7),
	('POLICY_HONOR', 'FLAVOR_EXPANSION', 7),
	('POLICY_WARRIOR_CODE', 'FLAVOR_EXPANSION', 5),
	('POLICY_WARRIOR_CODE', 'FLAVOR_HAPPINESS', 5),
	('POLICY_DISCIPLINE', 'FLAVOR_PRODUCTION', 5),
	('POLICY_DISCIPLINE', 'FLAVOR_GOLD', 5),
	('POLICY_MILITARY_TRADITION', 'FLAVOR_SCIENCE', 5),
	('POLICY_MILITARY_TRADITION', 'FLAVOR_OFFENSE', 5),
	('POLICY_MILITARY_CASTE', 'FLAVOR_RANGED', 5),
	('POLICY_MILITARY_CASTE', 'FLAVOR_EXPANSION', 5),
	('POLICY_PROFESSIONAL_ARMY', 'FLAVOR_GOLD', 5),
	('POLICY_PROFESSIONAL_ARMY', 'FLAVOR_PRODUCTION', 5),
	('POLICY_PIETY', 'FLAVOR_RELIGION', 18),
	('POLICY_PIETY', 'FLAVOR_GOLD', 13),
	('POLICY_PIETY', 'FLAVOR_PRODUCTION', 14),
	('POLICY_PIETY', 'FLAVOR_GROWTH', 14),
	('POLICY_ORGANIZED_RELIGION', 'FLAVOR_RELIGION', 13),
	('POLICY_ORGANIZED_RELIGION', 'FLAVOR_PRODUCTION', 12),
	('POLICY_MANDATE_OF_HEAVEN', 'FLAVOR_GROWTH', 12),
	('POLICY_MANDATE_OF_HEAVEN', 'FLAVOR_HAPPINESS', 12),
	('POLICY_THEOCRACY', 'FLAVOR_HAPPINESS', 12),
	('POLICY_THEOCRACY', 'FLAVOR_CULTURE', 13),
	('POLICY_REFORMATION', 'FLAVOR_CULTURE', 12),
	('POLICY_REFORMATION', 'FLAVOR_PRODUCTION', 12),
	('POLICY_FREE_RELIGION', 'FLAVOR_HAPPINESS', 12),
	('POLICY_FREE_RELIGION', 'FLAVOR_PRODUCTION', 12),
	('POLICY_PATRONAGE', 'FLAVOR_DIPLOMACY', 15),
	('POLICY_PATRONAGE', 'FLAVOR_CULTURE', 12),
	('POLICY_PATRONAGE', 'FLAVOR_ESPIONAGE', 12),
	('POLICY_PATRONAGE', 'FLAVOR_GOLD', 13),
	('POLICY_PHILANTHROPY', 'FLAVOR_DIPLOMACY', 13),
	('POLICY_PHILANTHROPY', 'FLAVOR_CULTURE', 10),
	('POLICY_CONSULATES', 'FLAVOR_DIPLOMACY', 15),
	('POLICY_CONSULATES', 'FLAVOR_CULTURE', 10),
	('POLICY_SCHOLASTICISM', 'FLAVOR_ESPIONAGE', 15),
	('POLICY_SCHOLASTICISM', 'FLAVOR_CULTURE', 10),
	('POLICY_CULTURAL_DIPLOMACY', 'FLAVOR_DIPLOMACY', 18),
	('POLICY_CULTURAL_DIPLOMACY', 'FLAVOR_GOLD', 18),
	('POLICY_MERCHANT_CONFEDERACY', 'FLAVOR_HAPPINESS', 15),
	('POLICY_MERCHANT_CONFEDERACY', 'FLAVOR_GOLD', 10),
	('POLICY_AESTHETICS', 'FLAVOR_CULTURE', 13),
	('POLICY_AESTHETICS', 'FLAVOR_SCIENCE', 12),
	('POLICY_AESTHETICS', 'FLAVOR_GREAT_PEOPLE', 12),
	('POLICY_AESTHETICS', 'FLAVOR_HAPPINESS', 11),
	('POLICY_CULTURAL_CENTERS', 'FLAVOR_SCIENCE', 12),
	('POLICY_CULTURAL_CENTERS', 'FLAVOR_CULTURE', 12),
	('POLICY_FINE_ARTS', 'FLAVOR_CULTURE', 12),
	('POLICY_FINE_ARTS', 'FLAVOR_HAPPINESS', 12),
	('POLICY_FLOURISHING_OF_ARTS', 'FLAVOR_CULTURE', 12),
	('POLICY_FLOURISHING_OF_ARTS', 'FLAVOR_WONDER', 12),
	('POLICY_ARTISTIC_GENIUS', 'FLAVOR_GREAT_PEOPLE', 12),
	('POLICY_ARTISTIC_GENIUS', 'FLAVOR_GOLD', 12),
	('POLICY_ETHICS', 'FLAVOR_CULTURE', 12),
	('POLICY_ETHICS', 'FLAVOR_DIPLOMACY', 12),
	('POLICY_COMMERCE', 'FLAVOR_GOLD', 27),
	('POLICY_COMMERCE', 'FLAVOR_PRODUCTION', 23),
	('POLICY_COMMERCE', 'FLAVOR_I_LAND_TRADE_ROUTE', 23),
	('POLICY_COMMERCE', 'FLAVOR_I_SEA_TRADE_ROUTE', 23),
	('POLICY_ENTREPRENEURSHIP', 'FLAVOR_GREAT_PEOPLE', 24),
	('POLICY_ENTREPRENEURSHIP', 'FLAVOR_GOLD', 24),
	('POLICY_TRADE_UNIONS', 'FLAVOR_GOLD', 24),
	('POLICY_TRADE_UNIONS', 'FLAVOR_PRODUCTION', 24),
	('POLICY_CARAVANS', 'FLAVOR_GOLD', 24),
	('POLICY_CARAVANS', 'FLAVOR_I_LAND_TRADE_ROUTE', 24),
	('POLICY_MERCANTILISM', 'FLAVOR_SCIENCE', 24),
	('POLICY_MERCANTILISM', 'FLAVOR_CULTURE', 24),
	('POLICY_PROTECTIONISM', 'FLAVOR_GOLD', 24),
	('POLICY_PROTECTIONISM', 'FLAVOR_I_SEA_TRADE_ROUTE', 24),
	('POLICY_EXPLORATION', 'FLAVOR_OFFENSE', 30),
	('POLICY_EXPLORATION', 'FLAVOR_AIR', 25),
	('POLICY_EXPLORATION', 'FLAVOR_NAVAL', 25),
	('POLICY_EXPLORATION', 'FLAVOR_EXPANSION', 29),
	('POLICY_MARITIME_INFRASTRUCTURE', 'FLAVOR_MILITARY_TRAINING', 24),
	('POLICY_MARITIME_INFRASTRUCTURE', 'FLAVOR_GOLD', 24),
	('POLICY_NAVAL_TRADITION', 'FLAVOR_SCIENCE', 24),
	('POLICY_NAVAL_TRADITION', 'FLAVOR_CULTURE', 24),
	('POLICY_MERCHANT_NAVY', 'FLAVOR_GROWTH', 24),
	('POLICY_MERCHANT_NAVY', 'FLAVOR_PRODUCTION', 24),
	('POLICY_TREASURE_FLEETS', 'FLAVOR_PRODUCTION', 24),
	('POLICY_TREASURE_FLEETS', 'FLAVOR_GOLD', 24),
	('POLICY_NAVIGATION_SCHOOL', 'FLAVOR_NAVAL_RECON', 24),
	('POLICY_NAVIGATION_SCHOOL', 'FLAVOR_RECON', 24),
	('POLICY_RATIONALISM', 'FLAVOR_SCIENCE', 30),
	('POLICY_RATIONALISM', 'FLAVOR_GROWTH', 30),
	('POLICY_RATIONALISM', 'FLAVOR_HAPPINESS', 20),
	('POLICY_RATIONALISM', 'FLAVOR_GREAT_PEOPLE', 20),
	('POLICY_SECULARISM', 'FLAVOR_SCIENCE', 24),
	('POLICY_SECULARISM', 'FLAVOR_GOLD', 24),
	('POLICY_SOVEREIGNTY', 'FLAVOR_HAPPINESS', 24),
	('POLICY_SOVEREIGNTY', 'FLAVOR_SCIENCE', 24),
	('POLICY_FREE_THOUGHT', 'FLAVOR_SCIENCE', 24),
	('POLICY_FREE_THOUGHT', 'FLAVOR_RELIGION', 24),
	('POLICY_HUMANISM', 'FLAVOR_HAPPINESS', 24),
	('POLICY_HUMANISM', 'FLAVOR_SCIENCE', 24),
	('POLICY_SCIENTIFIC_REVOLUTION', 'FLAVOR_SCIENCE', 24),
	('POLICY_SCIENTIFIC_REVOLUTION', 'FLAVOR_PRODUCTION', 24),
	('POLICY_TRADITION_FINISHER', 'FLAVOR_CULTURE', 50),
	('POLICY_LIBERTY_FINISHER', 'FLAVOR_EXPANSION', 50),
	('POLICY_HONOR_FINISHER', 'FLAVOR_OFFENSE', 50),
	('POLICY_PIETY_FINISHER', 'FLAVOR_RELIGION', 50),
	('POLICY_PATRONAGE_FINISHER', 'FLAVOR_DIPLOMACY', 50),
	('POLICY_AESTHETICS_FINISHER', 'FLAVOR_CULTURE', 50),
	('POLICY_COMMERCE_FINISHER', 'FLAVOR_GOLD', 50),
	('POLICY_EXPLORATION_FINISHER', 'FLAVOR_MILITARY_TRAINING', 50),
	('POLICY_RATIONALISM_FINISHER', 'FLAVOR_SCIENCE', 50),
	('POLICY_OPEN_SOCIETY', 'FLAVOR_GREAT_PEOPLE', 60),
	('POLICY_CREATIVE_EXPRESSION', 'FLAVOR_CULTURE', 60),
	('POLICY_CIVIL_SOCIETY', 'FLAVOR_GREAT_PEOPLE', 60),
	('POLICY_VOLUNTEER_ARMY', 'FLAVOR_DEFENSE', 60),
	('POLICY_COVERT_ACTION', 'FLAVOR_ESPIONAGE', 60),
	('POLICY_URBANIZATION', 'FLAVOR_OFFENSE', 30),
	('POLICY_URBANIZATION', 'FLAVOR_DIPLOMACY', 40),
	('POLICY_CAPITALISM', 'FLAVOR_HAPPINESS', 60),
	('POLICY_ECONOMIC_UNION', 'FLAVOR_GOLD', 60),
	('POLICY_THEIR_FINEST_HOUR', 'FLAVOR_DEFENSE', 60),
	('POLICY_UNIVERSAL_SUFFRAGE', 'FLAVOR_HAPPINESS', 60),
	('POLICY_NEW_DEAL', 'FLAVOR_GREAT_PEOPLE', 60),
	('POLICY_ARSENAL_DEMOCRACY', 'FLAVOR_DIPLOMACY', 60),
	('POLICY_MEDIA_CULTURE', 'FLAVOR_CULTURE', 60),
	('POLICY_TREATY_ORGANIZATION', 'FLAVOR_DIPLOMACY', 60),
	('POLICY_SPACE_PROCUREMENTS', 'FLAVOR_SPACESHIP', 60),
	('POLICY_UNIVERSAL_HEALTHCARE_F', 'FLAVOR_HAPPINESS', 60),
	('POLICY_HERO_OF_THE_PEOPLE', 'FLAVOR_GREAT_PEOPLE', 60),
	('POLICY_SOCIALIST_REALISM', 'FLAVOR_CULTURE', 60),
	('POLICY_SKYSCRAPERS', 'FLAVOR_WONDER', 60),
	('POLICY_PATRIOTIC_WAR', 'FLAVOR_DEFENSE', 60),
	('POLICY_DOUBLE_AGENTS', 'FLAVOR_ESPIONAGE', 60),
	('POLICY_YOUNG_PIONEERS', 'FLAVOR_SCIENCE', 60),
	('POLICY_ACADEMY_SCIENCES', 'FLAVOR_SCIENCE', 60),
	('POLICY_PARTY_LEADERSHIP', 'FLAVOR_EXPANSION', 60),
	('POLICY_RESETTLEMENT', 'FLAVOR_GROWTH', 60),
	('POLICY_CULTURAL_REVOLUTION', 'FLAVOR_CULTURE', 60),
	('POLICY_WORKERS_FACULTIES', 'FLAVOR_SCIENCE', 60),
	('POLICY_FIVE_YEAR_PLAN', 'FLAVOR_PRODUCTION', 60),
	('POLICY_DICTATORSHIP_PROLETARIAT', 'FLAVOR_HAPPINESS', 60),
	('POLICY_IRON_CURTAIN', 'FLAVOR_OFFENSE', 60),
	('POLICY_SPACEFLIGHT_PIONEERS', 'FLAVOR_SPACESHIP', 60),
	('POLICY_UNIVERSAL_HEALTHCARE_O', 'FLAVOR_HAPPINESS', 60),
	('POLICY_ELITE_FORCES', 'FLAVOR_MILITARY_TRAINING', 60),
	('POLICY_MOBILIZATION', 'FLAVOR_SCIENCE', 60),
	('POLICY_UNITED_FRONT', 'FLAVOR_DIPLOMACY', 60),
	('POLICY_INDUSTRIAL_ESPIONAGE', 'FLAVOR_EXPANSION', 60),
	('POLICY_MILITARISM', 'FLAVOR_MILITARY_TRAINING', 30),
	('POLICY_MILITARISM', 'FLAVOR_AIR', 60),
	('POLICY_MILITARISM', 'FLAVOR_AIRLIFT', 30),
	('POLICY_FORTIFIED_BORDERS', 'FLAVOR_EXPANSION', 60),
	('POLICY_POLICE_STATE', 'FLAVOR_HAPPINESS', 60),
	('POLICY_NATIONALISM', 'FLAVOR_GOLD', 60),
	('POLICY_THIRD_ALTERNATIVE', 'FLAVOR_INFRASTRUCTURE', 60),
	('POLICY_TOTAL_WAR', 'FLAVOR_PRODUCTION', 60),
	('POLICY_CULT_PERSONALITY', 'FLAVOR_CULTURE', 60),
	('POLICY_GUNBOAT_DIPLOMACY', 'FLAVOR_DIPLOMACY', 60),
	('POLICY_NEW_ORDER', 'FLAVOR_OFFENSE', 60),
	('POLICY_LIGHTNING_WARFARE', 'FLAVOR_OFFENSE', 60),
	('POLICY_UNIVERSAL_HEALTHCARE_A', 'FLAVOR_EXPANSION', 60),
	('POLICY_FUTURISM', 'FLAVOR_CULTURE', 30),
	('POLICY_FUTURISM', 'FLAVOR_GOLD', 30),
	('POLICY_GLOBALIZATION', 'FLAVOR_CULTURE', 30),
	('POLICY_GLOBALIZATION', 'FLAVOR_GOLD', 30),
	('POLICY_INFILTRATION', 'FLAVOR_GOLD', 30),
	('POLICY_INFILTRATION', 'FLAVOR_PRODUCTION', 30),
	('POLICY_NATIONALIZATION', 'FLAVOR_GOLD', 30),
	('POLICY_NATIONALIZATION', 'FLAVOR_SCIENCE', 30);

	
