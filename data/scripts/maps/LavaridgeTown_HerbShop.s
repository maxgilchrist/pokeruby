LavaridgeTown_HerbShop_MapScripts:: @ 8153628
	.byte 0

LavaridgeTown_HerbShop_EventScript_153629:: @ 8153629
	lock
	faceplayer
	message LavaridgeTown_HerbShop_Text_17615C
	waittext
	pokemart LavaridgeTown_HerbShop_Items
	msgbox LavaridgeTown_HerbShop_Text_1A0C02, 4
	release
	end

	.align 2
LavaridgeTown_HerbShop_Items:: @ 8153640
	.2byte ITEM_ENERGY_POWDER
	.2byte ITEM_ENERGY_ROOT
	.2byte ITEM_HEAL_POWDER
	.2byte ITEM_REVIVAL_HERB
	.2byte ITEM_NONE
	release
	end

LavaridgeTown_HerbShop_EventScript_15364C:: @ 815364C
	msgbox LavaridgeTown_HerbShop_Text_1762A3, 2
	end

LavaridgeTown_HerbShop_EventScript_153655:: @ 8153655
	lock
	faceplayer
	checkflag 254
	jumpeq LavaridgeTown_HerbShop_EventScript_153684
	msgbox LavaridgeTown_HerbShop_Text_1761A2, 4
	giveitem ITEM_CHARCOAL
	compare RESULT, 0
	jumpeq LavaridgeTown_HerbShop_EventScript_1A029B
	setflag 254
	release
	end

LavaridgeTown_HerbShop_EventScript_153684:: @ 8153684
	msgbox LavaridgeTown_HerbShop_Text_176209, 4
	release
	end

