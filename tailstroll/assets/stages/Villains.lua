function onCreate()
	-- background shit
	makeLuaSprite('SonicFront', 'SonicFront', -500, -300);
	setLuaSpriteScrollFactor('SonicFront', 0.9, 0.9);

		makeLuaSprite('SonicForeground', 'SonicForeground', -500, -303);
		setLuaSpriteScrollFactor('SonicForeground', 0.9, 0.9);

	addLuaSprite('SonicFront', false);
	addLuaSprite('SonicForeground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end