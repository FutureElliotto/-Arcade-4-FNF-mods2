
	local thickness = 200

function onCreatePost()

	makeLuaSprite("bar", nil, 0, 200)
	makeGraphic("bar", 1600, thickness, "000000")
	setObjectCamera("bar", "hud")
	addLuaSprite("bar", false)

	makeLuaText('Credits', 'In My Head! - SUPXR', 0, 0, 300);
	setTextFont("Credits", "times new roman.ttf");
	setTextSize('Credits', 30);
	setTextBorder('Credits', 1, '000000');
	addLuaText('Credits');

	setProperty('Credits.alpha', 0)
	setProperty('bar.alpha', 0)

	screenCenter('bar')
	screenCenter('Credits')
end

function onBeatHit()

	if curBeat == 32 then


	doTweenAlpha('Cred2', 'Credits', 0, 1)

	doTweenAlpha('ba2', 'bar', 0, 1)
end
end

function onSongStart()
	doTweenAlpha('Cred', 'Credits', 1, 3)

	doTweenAlpha('ba', 'bar', 0.5, 3)
end
