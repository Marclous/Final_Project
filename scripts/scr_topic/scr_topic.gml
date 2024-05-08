global.topics = {}

global.topics[$ "Tutorial"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("WTF is this place?! (Press SPACE to continue...)"),
	SPEAKER("???", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Welcome to the world of the wax."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	CHOICE("World of the Wax?",
		OPTION("Who are you?", "Chose Who"),
		OPTION("World of the wax??", "Chose Where")
		),
	]

global.topics[$ "PresentPhoneNo"] = [
	TEXT("Hello?"),
	CHOICE("Ah, you’ve finally answered. Listen closely, I don't have much time before the connection fades. (shout out to mystery clone)",
		OPTION("Who are you?",1,0, "Chose Who"),
		OPTION("Where am I?", 2,0, "Chose Where")
		),
]

global.topics[$ "Chose Who"] = [
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I am the god of the Wax."),
	CHOICE("World of the Wax?",
		OPTION("World of the wax??", "Chose Where1")
		),
	]

global.topics[$ "Chose Where"] = [
	SPEAKER("???", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Yes, World of the wax. Wax World."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("*Whispering* What kind of explanation is this??"),
	SPEAKER("???", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I can hear you."),
	CHOICE("World of the Wax?",
		OPTION("Who are you?", "Chose Who1")
		),
	]

global.topics[$ "Chose Who1"] = [
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I am the god of the Wax."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Why am I here?"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Last year, you bought a box of candles and leave them beside the window."),
	TEXT("And then you never think of them."),
	TEXT("They are all melted right now."),
	TEXT("You killed these candles without lighting them!"),
	TEXT("Such a waste!"),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("How should I get out of here?"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Look around. There are melted wax everywhere."),
	TEXT("This boxed-wax-world is ruined because of you!"),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("** How am I responsible to this?? **"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("You need to collect all these wax and remake them back into candles!"),
	TEXT("You need to pay for what you did."),
	TEXT("Complete each level to collect the wax."),
	TEXT("*Wax God is gone.*"),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("This man is totally sick! They are just candles!"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I can still hear you."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("** What the fuck?! **"),
	TEXT("Let me out!!"),
	TEXT("* No Responses *"),
	TEXT("Fine! Guess I'll just have to do what he just said.",1)
	]

global.topics[$ "Chose Where1"] = [
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Yes, World of the wax. Wax World."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("*Whispering* What kind of explanation is this??"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I can hear you."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Why am I here?"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Last year, you bought a box of candles and leave them beside the window."),
	TEXT("And then you never think of them."),
	TEXT("They are all melted right now."),
	TEXT("You killed these candles without lighting them!"),
	TEXT("Such a waste!"),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("How should I get out of here?"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Look around. There are melted wax everywhere."),
	TEXT("This boxed-wax-world is ruined because of you!"),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("** How am I responsible to this?? **"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("You need to collect all these wax and remake them back into candles!"),
	TEXT("You need to pay for what you did."),
	TEXT("Complete each level to collect the wax."),
	TEXT("*Wax God is gone.*"),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("This man is totally sick! They are just candles!"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I can still hear you."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("** What the fuck?! **"),
	TEXT("Let me out!!"),
	TEXT("* No Responses *"),
	TEXT("Fine! Guess I'll just have to do what he just said.",1)
	
	]
	
global.topics[$ "Tutorial1Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("OMG gun. This is sick!"),
	TEXT("Wait, wait, wait wait wait!! What happened to my body?!"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("As a punishment, you are a candle man right now."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Fineeee! **Will I die if I'm lighted for a long time?**"),
	TEXT("But I haven't take my shooting lessons yet!"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Hopefully you will be able to use it properly.")

	]

global.topics[$ "Level1Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Killer Maya is Here! Hahaha....AHHHHHH!")
	]

global.topics[$ "Level1End"] = [
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("You are less useless than I thought."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Ha? How useless do you think I am?"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("This is your award for collecting all the red waxes.")
	]
	
global.topics[$ "Tutorial2Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("OMG my body! It's back!"),
	TEXT("How can you call giving somebody's body back is an award?"),
	TEXT("I have my body back? Can I even sound more miserable?"),
	TEXT("OK let's see what my body can do in this piece of wax world.")
	]
	
global.topics[$ "Level2Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Ha! Let's see what I can do with two bodies.")
	]

global.topics[$ "Level2End"] = [
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Conguatulations on collecting all the orange waxes."),
	TEXT("You will be awarded."),
	TEXT("But I need to remind you, this is just a beginning."),
	TEXT("Wish you good luck.")
	]
	
global.topics[$ "Tutorial3Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("What would be the reward for this time?"),
	]
	
global.topics[$ "Tutorial3Mid"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("New gun..."),
	TEXT("So FUCKING COOOL!!"),
	TEXT("You dumb batmans, wait to die!!")
	]
	
global.topics[$ "Level3Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I AM the BEST! HaHa"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("To be honest, I am surprised that you are still alive."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("*Upsetting* What do you mean?"),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Just telling the truth."),
	TEXT("Things will be a lot harder after this level."),
	TEXT("The reward for collecting all the green waxes would be another gun."),
	TEXT("Hope you can still laugh after next level.")
	]
	
global.topics[$ "Tutorial4Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("New gun! Hahaha! I'm about to rule the wax world!"),
	]

global.topics[$ "Tutorial4Mid"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Slay Maya!")
	]
	
global.topics[$ "Level4Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Hmm, no dumb batmans?"),
	TEXT("Seems like I don't need him to wish me good luck at all.")
	]

global.topics[$ "Level4End"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Shit, I'm so FUCKING tired."),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I warned ya."),
	TEXT("Now you have collected red, orange, green and blue waxes."),
	TEXT("Survive the last one.")
	]

global.topics[$ "Level5Begin"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I feel no sign of good luck..."),
	]

global.topics[$ "Level5End"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Finally the end. Phew..."),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I can't believe you made it."),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I thought God knows everything, or at least, my ability."),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("I would say I didn't see any ability on you. Except wasting"),
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("??! You are a mean, mean, Mean Mean God."),
	SPEAKER("Wax God", sWaxGodTalk, PORTRAIT_SIDE.LEFT),
	TEXT("Nevermind, you made it. I will let you go back to the reality.")
	]

global.topics[$ "END"] = [
	TEXT("I'm back! I'm back!"),
	TEXT("It's like a dream..."),
	CHOICE("The candles!",
		OPTION("Check the window", "Window")
		)
	]
global.topics[$ "Window"] = [
	TEXT("I should add my shooting lessons to the agenda..."),
	]





	