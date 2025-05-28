function onCreatePost()
    makeLuaSprite("bg", "stage/bg", -500, -500)
    setScrollFactor("bg", 0, 0)
    addLuaSprite("bg")

    makeLuaSprite("energyWall", "stage/Energywall", 1850, -690)
    setScrollFactor("energyWall", 0.6, 0.6)
    addLuaSprite("energyWall")

    makeLuaSprite("floor", "stage/daBackground", -350, -355)
    setScrollFactor("floor", 0.9, 0.9)
    scaleObject("floor", 1.55, 1.55)
    addLuaSprite("floor")

    makeAnimatedLuaSprite("clone2", "stage/Clone", 1200, 470)
    addAnimationByPrefix("clone2", "activate", "Clone1", 24, false)
    setScrollFactor("clone2", 0.9, 0.9)
    addLuaSprite("clone2", true)

    makeAnimatedLuaSprite("clone1", "stage/Clone", 700, 500)
    addAnimationByPrefix("clone1", "activate", "Clone1", 24, false)
    setScrollFactor("clone1", 0.9, 0.9)
    addLuaSprite("clone1", true)

    makeLuaSprite("holeVoid", "stage/Spawnhole_Ground_BACK", 700, 1080)
    setScrollFactor("holeVoid", 0.9, 0.9)
    scaleObject("holeVoid", 1.55, 1.55)
    addLuaSprite("holeVoid")

    makeLuaSprite("cover", "stage/cover", 700, 1080)
    scaleObject("cover", 1.55, 1.55)
    setScrollFactor("cover", 0.9, 0.9)
    addLuaSprite("cover", true)

    makeLuaSprite("holeCover", "stage/Spawnhole_Ground_COVER", 700, 1080)
    setScrollFactor("holeCover", 0.9, 0.9)
    scaleObject("holeCover", 1.55, 1.55)
    addLuaSprite("holeCover", true)

    makeAnimatedLuaSprite("floorSpikes", "stage/FloorSpikes", 650, 500)
    addAnimationByPrefix("floorSpikes", "activate", "SpikesUpFront", 24, false)
    setScrollFactor("floorSpikes", 0.9, 0.9)
    addLuaSprite("floorSpikes", true)

    setTextColor("timeTxt", "FF0000")
    setTextFont("timeTxt", "impact.ttf")
    setTextFont("scoreTxt", "impact.ttf")
    setTextFont("botplayTxt", "impact.ttf")
    setProperty('timeBar.color', getColorFromHex('FF0000'))
    setTextString('botplayTxt', "WHERE IS HANK!?")
    setTextColor("botplayTxt", "FF0000")
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if getProperty('dad.curCharacter') == 'exTricky' then
		if noteData == 1 then
			--down
			setProperty('spikes1.alpha', 1)
			if isSustainNote == false then
			objectPlayAnimation('floorSpikes', 'activate', true)
			else
			objectPlayAnimation('floorSpikes', 'activate', false)
			end
		end
	end
end

function onBeatHit()
    if curBeat % 2 == 0 then
        local cloneRoll = math.random(0, 6)
        if cloneRoll == 3 then
            objectPlayAnimation('clone2', 'activate', false)
        end
        if cloneRoll == 6 then
            objectPlayAnimation('clone1', 'activate', false)
        end
    end
end
