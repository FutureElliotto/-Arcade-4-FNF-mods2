function onCreate()
	--Create Background sprites
	makeLuaSprite('shadowbg', 'shadowbg', -564, -308);
	addLuaSprite('shadowbg', false);
	makeLuaSprite('shadowbg3', 'shadowbg3',	-462, -469);
	addLuaSprite('shadowbg3', false);
	makeLuaSprite('shadowbg2', 'shadowbg2', -564, -308);
	addLuaSprite('shadowbg2', false);
	makeLuaSprite('shadowbg4', 'shadowbg4', -545, 577);
	addLuaSprite('shadowbg4', false);

    makeAnimatedLuaSprite('elcolas', 'elcolas',452, 160);
    addAnimationByPrefix('elcolas', 'elcolas', 'elcolas', 24, true);  
    addAnimationByPrefix('elcolas', 'elpepe', 'elpepe', 24, true); 
    addAnimationByPrefix('elcolas', 'QUE', 'QUE', 20, false); 
    objectPlayAnimation('elcolas', 'elcolas', true)
    addLuaSprite('elcolas', false);

	makeAnimatedLuaSprite('character', 'characters/gfbest', 590, 115); -- change 'character' to the name of your character, change 'dad' to the name of the .png and .xml file

	addAnimationByPrefix('character', 'idle', 'GF Dancing Beat', 24, true); -- change 'character' to the name of your character, don't change 'idle', change 'Dad idle dance' to the idle animation in your xml file
	addAnimationByPrefix('character', 'singLEFT', 'Dad Sing Note LEFT', 24, false); -- repeat this for each one ^^^
	addAnimationByPrefix('character', 'singDOWN', 'Dad Sing Note DOWN', 24, false);
	addAnimationByPrefix('character', 'singUP', 'Dad Sing Note UP', 24, false);
	addAnimationByPrefix('character', 'singRIGHT', 'Dad Sing Note RIGHT', 24, false);

	objectPlayAnimation('character', 'idle'); -- change 'character'
	addLuaSprite('character', false);

end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'character' then
		objectPlayAnimation('character', singAnims[direction + 1], false)
	end
end 

function onBeatHit()	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('character', 'idle');

	end
end 

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('character', 'idle');
	end

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
	if value1 == 'shoot' and value2 == 'dad' then
	objectPlayAnimation('boyfriend', 'hurt');
        end
	end	
end 


