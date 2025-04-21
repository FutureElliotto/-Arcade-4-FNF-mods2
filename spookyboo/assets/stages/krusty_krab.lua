
function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'sky', -600, -300);
	setScrollFactor('stageback', 1.1, 1.1);
	
	makeLuaSprite('stagefront', 'flore', -635, -225);
	setScrollFactor('stagefront', 1, 1);
	scaleObject('stagefront', 1, 1);

	
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
end