image_speed = 0;
yvelocity = 0;
xvelocity = 0;
walkSpeed = 2.0;

centerYOffset = -5
centerY = y + centerYOffset
inputDirection = 0
aimDir = 0
face = 3

gothit = false
hit_point = 15
knockback_speed = 0;
knockback_direction = 0;

global.heroes[0] = id
global.currentHero = id
name = "Maya"

//player_gun = instance_create_depth(x,y,depth,oGun)

/*if !(audio_play_sound(sdMusic,1,true)){
	audio_play_sound(sdMusic,1,true)
}
*/

weaponOffsetDist = 4
shootTimer = 0



/*global.Weapons = {
	blueRifle : {
		sprite: sBlueRifle,
		length: 29,
		bulletObj: oRifleBullet,
		cooldown: 9
	},

	blueShotgun : {
		sprite: sBlueShotgun,
		length: 29,
		bulletObj: oRifleBullet,
		cooldown: 30
	}
}*/


//array_push(global.Playerweapons, global.Weapons.blueShotgun)
//array_push(global.Playerweapons, global.Weapons.AssaultRifle)
if room == rm_tutorial3 && array_length(global.Playerweapons) < 2 {
	array_push(global.Playerweapons, global.Weapons.blueShotgun)
	startDialogue("Tutorial3Begin")
}
if room == rm_tutorial4 && array_length(global.Playerweapons) < 3 {
	array_push(global.Playerweapons, global.Weapons.AssaultRifle)
	startDialogue("Tutorial4Begin")
}
if room == rm_tutorial1 && array_length(global.Playerweapons) < 1 {
	array_push(global.Playerweapons, global.Weapons.blueRifle)
	startDialogue("Tutorial1Begin")
}

if room == rm_level1 && global.said1 == false{
	startDialogue("Level1Begin")
	global.said1 = true
}
if room == rm_level2 && global.said2 == false{
	startDialogue("Level2Begin")
	global.said2 = true
}
if room == rm_level3 && global.said3 == false {
	startDialogue("Level3Begin")
	global.said3 = true
}
if room == rm_level4 && global.said4 == false {
	startDialogue("Level4Begin")
	global.said4 = true
}
if room == rm_level5 && global.said5 == false{
	startDialogue("Level5Begin")
	global.said55 = true
}

selectedweapon = 0
if array_length(global.Playerweapons)>0 {
	
	weapon = global.Playerweapons[selectedweapon]
}
