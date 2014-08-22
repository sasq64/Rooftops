"Rooftops" by "Jonas Minnberg"

When play begins:
	say "It is another hot summer day, roughly two weeks since the (virtual) end of human kind. You have made your way onto the roof of the building where you work, on lower Manhattan.[paragraph break]More recently, you climbed up on to the ledge of the building, your feet now dangling over the edge, two hundred and twenty feet above ground.[paragraph break]You are trying to work up the courage to jump.";
	
Section - General rules

A person can be suicidal. A person is usually not suicidal.
The player is suicidal.
	
Section - Blocking

Blocking relates one thing to one door.
The verb to block means the blocking relation.

Instead of opening a door that is blocked by something (called the blocker), say "You can't do that while it's blocked by [the blocker]."

Instead of pushing or pulling something (called the blocker) that blocks a door:
	say "You move [the blocker] out of the way.";
	now the blocker is handled;
	now the blocker blocks nothing.


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

Section - First rooftop

Outside stairwell is a room. It is down from the edge.

Outside stairwell has description "An ordinary rooftop, surrounding a small [structure] with an entrance to the stairwell."

Top of stairwell is a room.

The stairwell door is a door. It is inside from outside stairwell and outside from top of stairwell. It is closed and scenery.

In outside stairwell is an office chair. It has description "An old office chair."

Roof exit structure is a backdrop in office rooftop. It has description "A small brick structure with a gray, metal door on one side, leading inside to the stairwell of the building."


The office chair blocks the stairwell door. It has initial appearance "You have wedged and old office chair is under the door handle, in a somewhat futile attempt to keep the ... creatures out."

Edward is a man in top of stairwell.

A rope is held by Edward.
