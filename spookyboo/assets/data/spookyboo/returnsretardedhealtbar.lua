downpoop = 635
function onCreate()
	-- background shit
	if (downscroll == true) then
	downpoop = 70
	else 
	downpoop = 635
	end
	makeLuaSprite('hghg', 'healte', 339, downpoop);
    addLuaSprite('hghg')
	--setScrollFactor('hghg', 1, 1);
    setObjectCamera('hghg','hud')
	scaleObject('hghg', 1, 0.90)
    setObjectOrder('hghg', 15);
	--setObjectOrder("healthBar", 6)
	setObjectOrder("iconP1", 16)
	setObjectOrder("iconP2", 17)
	
end