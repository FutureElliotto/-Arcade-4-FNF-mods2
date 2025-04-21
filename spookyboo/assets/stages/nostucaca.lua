
function onCreate()
	-- background shit

	makeLuaSprite('stageback', 'hehea', -200, 30);
	setScrollFactor('stageback', 1, 1);
	scaleObject('stageback', 0.5,0.5)


	addLuaSprite('stageback', false);
	--addLuaSprite('stagefront', false);
	close(true);
end