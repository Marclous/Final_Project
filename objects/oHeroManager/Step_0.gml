global.currentHero = global.heroes[hero]
if keyboard_check_released(vk_tab) {
	hero +=1
	if hero > 1 {
		hero = 0
	}
}