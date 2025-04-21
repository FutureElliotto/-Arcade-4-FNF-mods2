
function onCreate()
	-- background shit
	makeLuaSprite('stageback2', 'pinboard', -170, -420);
	setScrollFactor('stageback2', 1, 1);
	scaleObject('stageback2', 1.75, 1.84)

	makeLuaSprite('stageback', 'bg', 100, -290);
	setScrollFactor('stageback', 1, 1);
	scaleObject('stageback', 1.71, 1.71);
	
	--makeLuaSprite('stagefront', 'flore', -635, -225);
	--setScrollFactor('stagefront', 1, 1);
	--scaleObject('stagefront', 1, 1);

	addLuaSprite('stageback2', false);
	addLuaSprite('stageback', false);
	--addLuaSprite('stagefront', false);
	close(true);
end