
downpoop = 635
function onCreate()
	-- background shit
	if (downscroll == true) then
	downpoop = 70
	else 
	downpoop = 635
	end
	makeLuaSprite('hghg', 'da poop', 339, downpoop);
    addLuaSprite('hghg')
	--setScrollFactor('hghg', 1, 1);
    setObjectCamera('hghg','hud')
	scaleObject('hghg', 1, 0.90)
    setObjectOrder('hghg', 15);
	--setObjectOrder("healthBar", 6)
	setObjectOrder("iconP1", 16)
	setObjectOrder("iconP2", 17)
	
end

function onBeatHit()
 if curBeat == 148 then
	doTweenAlpha('cwse', 'hghg',0,0.25)
 elseif curBeat == 212 then
	doTweenAlpha('cdwse', 'hghg',1,0.25)
 end
end