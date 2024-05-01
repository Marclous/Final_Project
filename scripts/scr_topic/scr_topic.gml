global.topics = {}

global.topics[$ "Tutorial"] = [
	SPEAKER("Wax God", sWaxGod, PORTRAIT_SIDE.LEFT),
	TEXT("WTF is this place?!")
	]

global.topics[$ "PresentPhoneNo"] = [
	TEXT("Hello?"),
	CHOICE("Ah, you’ve finally answered. Listen closely, I don't have much time before the connection fades. (shout out to mystery clone)",
		OPTION("Who are you?",1,0, "Chose Who"),
		OPTION("Where am I?", 2,0, "Chose Where")
		),
]

global.topics[$ "Chose Who"] = [
	TEXT("I'm someone who's been in your shoes, quite literally, though in another time."),
	TEXT("You may already noticed. The painting in your room could take you to places."),
	TEXT("Also keep an eye on the clock, it could tell you more than time. Pl... do ge... out!"),
	TEXT("(The voice faded)")
	]


global.topics[$ "Chose Where"] = [
	TEXT("A room apparently. I don't know where this is, but we can get through this together."),
	TEXT("You may already noticed. The painting in your room could take you to places."),
	TEXT("Also keep an eye on the clock, it could tell you more than time. Pl... do ge... out!"),
	TEXT("(The voice faded)")
	]

