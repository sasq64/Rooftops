"Rooftops" by "Jonas Minnberg"

Book - Setup

When play begins:
	say "It is another hot summer day, roughly two weeks since the (virtual) end of human kind. You have made your way onto the roof of the building where you work, on lower Manhattan.[paragraph break]More recently, you climbed up on to the ledge of the building, your feet now dangling over the edge, two hundred and twenty feet above ground.[paragraph break]You are trying to work up the courage to jump.";
	
Section - General rules

A person can be suicidal. A person is usually not suicidal.
The player is suicidal.

The block giving rule is not listed in the check giving it to rules.

understand the command "throw" as something new.
understand "throw [something] towards [a direction]" as directional throwing.
understand "throw [something] towards [something]" as locational throwing.

directional throwing is an action applying to two things.
locational throwing is an action applying to two things.

Section - Ropes

A rope is a kind of thing.

Definition: a thing is nonrope if it is not a rope. [The perfect idiocy of this statement notwithstanding, having a shortcut will come in very handy later]

Attachment relates things to each other in groups. The verb to be stuck to means the attachment relation.

Definition: a thing is tied if the number of things stuck to it is greater than 1.

Definition: a thing is free if it is not tied.

Definition: a rope is free if the number of nonrope things stuck to it is less than 2.

Definition: a thing is hindering if it is stuck to the noun and it is not within the location.

A thing can be round or unevenly shaped. A thing is usually round.

Definition: something is anchored if it is fixed in place or it is scenery or it is part of an anchored thing.

Definition: something is draggable if it is not had by the player and it is not the player and it is not anchored.

[Now, we want a rope to be described in terms of the way it is tied, when it's described in a room description.]

Rule for writing a paragraph about a rope (called the coil):
	if the coil is stuck to something which is in a room (called the next room) which is not the location:
		let the way be the best route from the location to the next room;
		if the way is up or the way is down:
			say "[The coil] runs [way] into [the next room].";
		otherwise:
			say "[The coil] snakes across the floor [way] towards [the next room].";
	otherwise:
		say "There is [a coil] here[if the coil is stuck to a visible nonrope thing], tied to [the list of nonrope visible things which are stuck to the coil][end if]."

To decide what room is the home of (item - a thing):
	if item is a door:
		let front cut be the number of moves from the location to the front side of the item;
		let back cut be the number of moves from the location to the back side of the item;
		if front cut is -1, let front cut be 999;
		if back cut is -1, let back cut be 999;
		if the location encloses the item, decide on the location;
		if front cut is greater than back cut, decide on the back side of the item;
		decide on the front side of the item;
	decide on the location of the item.

Rule for writing a paragraph about a nonrope thing (called the anchor) which is stuck to a rope (called the coil):
	if the coil is in an adjacent room:
		let the next room be the home of the coil;
		let the way be the best route from the location to the next room;
		if the way is up or the way is down:
			say "[The coil] runs [way] from [the anchor] into [the next room].";
		otherwise:
			say "From [the anchor] runs [a coil], heading off toward [the way].";
	otherwise:
		if the coil is stuck to something which is not visible,
			say "[The coil] is tied to [the anchor][if the coil is stuck to something in an adjacent room (called the next room)], and from there runs off towards [the next room][end if]."

[We need a way to account for it when it's being carried, as well.]

After printing the name of a rope (called the tied object) while taking inventory:
	if something nonrope is stuck to the tied object:
		say " (attached to [the list of nonrope things which are stuck to the tied object])";
	otherwise:
		say " (with both ends free)".

[And, indeed, whenever the player examines a rope, we should see what's connected.]

Instead of examining a rope (called the cord) when something is stuck to the cord:
	say "[The noun] is tied to [the list of secondary things which are stuck to the noun]."

[Similarly, any time the player looks at something tied to a rope.]

After examining the player when the player is stuck to something which is not the player:
	say "You're currently lashed to [the list of secondary things stuck to the noun]."

After examining something which is stuck to something secondary:
	say "[The noun] is currently attached to [the list of secondary things stuck to the noun]."

[We also need to make sure that the rope can be interacted with properly even when it's partly in the next room.]

After deciding the scope of the player:
	if something stuck to a rope (called the coil) is in the location, place the coil in scope.

A reaching inside rule:
	if the noun is a rope:
		let the anchor be a random visible thing stuck to the noun;
		if the anchor is touchable, allow access.

[Now tying:]

Before tying something to a rope:
	if the noun is stuck to the second noun, say "[The noun] and [the second noun] are already tied together." instead;
	if the second noun is not free, say "[The second noun] has no ends free." instead;
	if the noun is round, say "You can't realistically tie anything to [the noun]." instead.

Instead of tying a rope to something:
	try tying the second noun to the noun.

Instead of tying something to a rope:
	now the noun is stuck to the second noun;
	say "You loop [the second noun] around [the noun] and knot firmly."


Instead of tying something to a nonrope tied thing:
	let the coil be a random rope stuck to the second noun;
	try tying the noun to the coil.

Instead of tying a nonrope tied thing to something:
	let the coil be a random rope stuck to the noun;
	try tying the second noun to the coil.

Instead of tying a free nonrope thing to a free nonrope thing:
	if the player carries a free rope (called the coil):
		try tying the noun to the coil;
		if the noun is stuck to the coil and the coil is free:
			try tying the second noun to the coil;
	otherwise:
		say "You lack the requisite spare rope."

Understand "untie [something] from [something]" as untying it from. Understand "untie [something]" as untying  it from.

Rule for supplying a missing second noun while untying something from:
	if the number of secondary things stuck to the noun is 0, say "[The noun] is already entirely free." instead;
	if the noun is a rope:
		if the number of touchable nonrope things which are stuck to the noun > 1:
			say "You'll have to say which thing you want to untie [the noun] from.";
			rule fails;
		otherwise:
			if the number of touchable nonrope things stuck to the noun is 0, say "You can't reach [the random nonrope thing stuck to the noun]." instead;
			let the tied object be a random touchable nonrope thing which is stuck to the noun;
			say "(from [the tied object])[line break]";
			now the second noun is the tied object;
	otherwise:
		if the noun is stuck to a rope (called the tied object):
			say "(from [the tied object])[line break]";
			now the second noun is the tied object.

Untying it from is an action applying to two things.

Before untying a rope from something: try untying the second noun from the noun instead.

Before untying something from a rope:
	if the second noun is not held:
		say "(first picking up [the second noun])[line break]";
		try taking the second noun.

Check untying it from:
	unless the noun is stuck to the second noun or the second noun is stuck to the noun,
		say "[The noun] and [the second noun] are already not tied together." instead.

Carry out untying it from:
	now the noun is not stuck to the second noun.

Report untying it from:
	say "Untied."

[Another part of the fun of a rope is that you can drag things from another room:]

After reading a command: now every thing is unmentioned.

Before pulling something anchored: say "[The noun] is firmly anchored." instead.

Instead of pulling something tied:
	if the noun is unmentioned:
		say "The impulse is transmitted to [the list of pullable things stuck to the noun].";
		repeat with item running through pullable things stuck to the noun:
			say "[item]: [run paragraph on]";
			try pulling the item;
		if the noun is a rope and the noun is not within the location:
			if the number of nonrope hindering things is 0, move the noun to the location;
	otherwise:
		continue the action.

Before pulling something which is not visible:
	if the noun is anchored:
		say "[The noun] resists, for whatever reason." instead;
	otherwise:
		let space be the holder of the noun;
		let way be the best route from the space to the location;
		if the way is a direction:
			move the noun to the location;
			say "[The noun] [if the way is up]rises[otherwise]slides[end if] into view." instead;
		otherwise:
			move the noun to the location;
			say "[The noun] slides into view." instead.

Definition: a thing is secondary if it is not the noun.  Definition: a thing is pullable if it is not the noun and it is not the player.

[A player who is tied to things should also have some restrictions on his ability to move.]

Before going a direction (called the way) when the player has something (called the link) which is stuck to something anchored (called the anchor):
	let the next room be the home of the anchor;
	if the next room is not a room, continue the action;
	if the next room is the location:
		if the link is stuck to at least two anchored things,
			say "You can't go far while you're carrying [the link] tied to [the list of anchored things stuck to the link]." instead;
	otherwise:
		let the safe way be the best route from the location to the next room;
		if the safe way is the way:
			if the player is not stuck to the anchor, say "(coiling up your rope again as you go...)";
		otherwise:
			if the safe way is a direction,
				say "While you have [the link] you can't really head any direction but [best route from the location to the next room]." instead;
			otherwise say "You're tied up here." instead.

Before going a direction (called the way) when the player is stuck to something anchored (called the anchor):
	let the next room be the home of the anchor;
	if the next room is not a room, continue the action;
	if the next room is the location:
		if the player is stuck to at least two anchored things,
			say "You can't go far while you're tied to [the list of anchored things stuck to the player]." instead;
	otherwise:
		if the best route from the location to the next room is the way:
			say "(coiling up your rope again as you go...)";
		otherwise:
			say "Your attachments prevent you going any way but [best route from the location to the next room]." instead.

[Sometimes, if the player is tied to a movable object, the moved object will move with him.]

After going somewhere when the player has something (called the link) which is stuck to something draggable:
	if the player is not stuck to the link:
		say "You drag along behind you [the list of draggable things which are stuck to the link].";
		now every draggable thing which is stuck to the link is in the location;
	continue the action.

Report going somewhere when the player is stuck to something draggable:
	say "You drag along behind you [the list of draggable things which are stuck to the player].";
	now every draggable thing which is stuck to the player is in the location.

Section - Blocking

Blocking relates one thing to one door.
The verb to block means the blocking relation.

Instead of opening a door that is blocked by something (called the blocker), say "You can't do that while it's blocked by [the blocker]."

Instead of pushing or pulling something (called the blocker) that blocks a door:
	say "You move [the blocker] out of the way.";
	now the blocker is handled;
	now the blocker blocks nothing.

Book - The World

Section - Edward arrives
	
Edward arrives is a scene.
Edward arrives begins when play begins.
Edward arrives ends when time since Edward arrives began is 3 minutes.

Every turn during Edward arrives:
	let countdown be time since Edward arrives began;
	if countdown is 0 minutes:
		say "Loud moaning as wells as metallic thumps can be heard from behind the metal door leading down to the stair well.";
	if countdown is 1 minute:
		say "The thumps are getting louder. The door is visibly starting to give. It is not long now.";
	if countdown is 2 minutes:
		say "Your contemplating is suddenly interrupted by the sharp sounds of small arms fire. From behind the door. More gun fire, the muffled sounds of screams. Then quiet...";
		now player is not suicidal;
	if countdown is greater than 3 minutes:
		say "Suddenly you hear the muffled sound of a voice from behind the door saying: 'Hey, are you going to let me out there or what?'"


Office rooftop top is a region.

The edge and Outside stairwell is in office rooftop.

Section - On the ledge

The edge is a room. It has printed name "On the ledge".
It has description "You are sitting on a [ledge] a couple of hundred feet above the [Manhattan streets]."

The ledge, wrecked cars, dead drivers and is scenery in the edge.
pedestrians are scenery in the edge. They have description "Yes, even though you still have a hard time believing it ... the dead are walking."

The Manhattan streets is scenery in the edge. It has description "Far below you you can see [wrecked cars], [dead drivers] and [pedestrians]. And yes, for being dead some of them are awfully... mobile."

Instead of examining down when location is the edge, try examining streets.

Instead of going down when location is the edge and player is suicidal: say "Even if plunging hundreds of feet to your death is not appealing, what lies that way is even worse."

Instead of jumping when time since Edward arrives began is 2 minutes:
say "You think you are finally ready... you close your eyes and inch your way slowly over the edge..."

Instead of jumping when location is the edge: say "[if player is suicidal]You inch forward slightly, feeling the pull of the abyss below you but... you are not quite ready yet[else]For the moment at least, you have no direct urge to end things[end if]."

Section - Outside Stairwell

Outside stairwell is a room. It is down from the edge.

Outside stairwell has description "An ordinary rooftop, surrounding a small [structure] with an entrance to the stairwell."

Roof exit structure is a backdrop in office rooftop. It has description "A small brick structure with a gray, metal door on one side, leading inside to the stairwell of the building."

The stairwell door is a door. It is inside from outside stairwell and outside from top of stairwell. It is closed and scenery. It has description "A metal door leading to the stairwell."

The door handle is part of the stairwell door. It has description "Looks solid enough.". It is unevenly shaped. 

instead of tying something to the stairwell door, try tying noun to the door handle.

In outside stairwell is an office chair. It has description "An old office chair."
The office chair is unevenly shaped.
The office chair blocks the stairwell door. It has initial appearance "You have wedged and old office chair is under the door handle, in a somewhat futile attempt to keep the ... creatures out."

Section - Top of Stairwell

Top of stairwell is a room.

Section - Edward

Edward is a man in top of stairwell. 

Edward has description "He looks like a business type [unicode 8212] or rather looked. What once appears to have been an expensive suit now is torn and covered with blood and soot. His narrow face is pale, dirty and unshaven, but given the circumstances he looks reasonably sane. The gun you heard is held in what looks like a home made holster constructed from duct tape and some sort of plastic container.[if rope is held by edward]He has a rope slung over his shoulder[end if]."

A thing can be useful. A thing is normally not useful.

Edward carries a gun and a useful rope. He wears a torn suit, an Armani tie. 

[Persuasion rule for asking Edward to try dropping the rope:
	say "'...what do you have in mind?'";
	persuasion succeeds.
]

Instead of asking edward to try giving something useful to the player:
	say "'...what do you have in mind?'";
	try edward giving the noun to the player;

[
instead of directional throwing something towards something when location is outside stairwell:
	say "Yeaa haa".
]