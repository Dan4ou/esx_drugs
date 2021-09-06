Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

Config.DrugDealerItems = {
	heroin = 446,
	joint2g = 284,
	meth1g = 635,
	coke1g = 450,
	lsd = 950,
}

Config.ChemicalsConvertionItems = {
	hydrochloric_acid = 0,
	sodium_hydroxide = 0,
	sulfuric_acid = 0,
	lsa = 0,
}

Config.ChemicalsLicenseEnabled = true --Will Enable or Disable the need for a Chemicals License.
Config.MoneyWashLicenseEnabled = false --Will Enable or Disable the need for a MoneyWash License.

--[[Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}]]

Config.Licenses = {
	--moneywash = 75000,
	chemicalslisence = 100000,
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	--Weed, сменено 
	WeedField = {coords = vector3(1871.3, 4814.19, 45.01), name = _U('blip_WeedFarm'), color = 25, sprite = 496, radius = 100.0},
	WeedProcessing = {coords = vector3(1039.31, -3205.37, -38.17), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 100.0},
	
	--meth -  оправено
	MethProcessing = {coords = vector3(1006.0, -3195.04, -38.99), name = _U('blip_methprocessing'), color = 25, sprite = 496, radius = 0.0},
	HydrochloricAcidFarm = {coords = vector3(1539.63, 6336.18, 24.07), name = _U('blip_HydrochloricAcidFarm'), color = 25, sprite = 496, radius = 7.0},
	SulfuricAcidFarm = {coords = vector3(-1192.86, -2048.61, 14.11), name = _U('blip_SulfuricAcidFarm'), color = 25, sprite = 496, radius = 5.0},
	SodiumHydroxideFarm = {coords = vector3(3571.18, 3663.35, 33.9), name = _U('blip_SodiumHydroxideFarm'), color = 25, sprite = 496, radius = 7.0},
	
	--Chemicals - smeneno
	ChemicalsField = {coords = vector3(34.25, -2728.73, 2.14), name = _U('blip_ChemicalsFarm'), color = 25, sprite = 496, radius = 0.0},
	ChemicalsConvertionMenu = {coords = vector3(3614.38, 5025.42, 11.35), name = _U('blip_ChemicalsProcessing'), color = 25, sprite = 496, radius = 0.0},
	
	--Coke,smenen 
	CokeField = {coords = vector3(2448.9228515625, -1836.8076171875, 51.953701019287), name = _U('blip_CokeFarm'), color = 25, sprite = 496, radius = 20.0},
	CokeProcessing = {coords = vector3(1091.276, -3194.787, -39.293), name = _U('blip_Cokeprocessing'),color = 25, sprite = 496, radius = 20.0},
	
	--LSD,smeneno
	lsdProcessing = {coords = vector3(1049.05, -3100.54, -39.0), name = _U('blip_lsdprocessing'),color = 25, sprite = 496, radius = 20.0},
	thionylchlorideProcessing = {coords = vector3(30.23, 3670.91, 40.44), name = _U('blip_lsdprocessing'),color = 25, sprite = 496, radius = 20.0},
	
	--Heroin - opraveno
	HeroinField = {coords = vector3(2612.79, -1730.0, 16.63), name = _U('blip_heroinfield'), color = 25, sprite = 496, radius = 20},
	HeroinProcessing = {coords = vector3(439.47, 6456.38, 35.86), name = _U('blip_heroinprocessing'), color = 25, sprite = 496, radius = 100.0},

	--DrugDealer, smeneno
	DrugDealer = {coords = vector3(0, 0, -20), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},
	
	--License
	LicenseShop = {coords = vector3(-157.1, 6409.36, 31.92), name = _U('blip_lsdprocessing'),color = 25, sprite = 496, radius = 20.0},
	
	--MoneyWash
	MoneyWash = {coords = vector3(0, 0, -30), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},

}
