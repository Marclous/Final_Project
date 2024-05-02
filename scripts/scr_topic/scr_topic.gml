global.topics = {}

global.topics[$ "Tutorial"] = [
	SPEAKER("Maya", sMayaTalk, PORTRAIT_SIDE.LEFT),
	TEXT("WTF is this place?!"),
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
	TEXT("Fine! Guess I'll just have to do what he just said.")
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
	TEXT("Fine! Guess I'll just have to do what he just said.")
	
	]


	