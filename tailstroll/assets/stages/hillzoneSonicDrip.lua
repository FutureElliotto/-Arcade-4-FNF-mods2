function onCreate()
	-- background shit
	makeLuaSprite('BitchSonicFront', 'BitchSonicFront', -500, -300);
	setLuaSpriteScrollFactor('BitchSonicFront', 0.9, 0.9);

		makeLuaSprite('BitchSonicForeground', 'BitchSonicForeground', -500, -303);
		setLuaSpriteScrollFactor('BitchSonicForeground', 0.9, 0.9);

	addLuaSprite('BitchSonicFront', false);
	addLuaSprite('BitchSonicForeground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end