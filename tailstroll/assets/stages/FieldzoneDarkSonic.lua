function onCreate()
	-- background shit
	makeLuaSprite('tfbbg3', 'tfbbg3', -500, -300);
	setLuaSpriteScrollFactor('tfbbg3', 0.9, 0.9);

	makeLuaSprite('tfbbg', 'tfbbg', -820, -200);
	setLuaSpriteScrollFactor('tfbbg', 0.9, 0.9);
	scaleObject('tfbbg', 1.1, 1.1);

	addLuaSprite('tfbbg3', false);
	addLuaSprite('tfbbg', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end