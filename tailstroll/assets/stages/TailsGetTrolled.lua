function onCreate()
	-- background shit
	makeLuaSprite('TailsFront', 'TailsFront', -500, -300);
	setLuaSpriteScrollFactor('TailsFront', 0.9, 0.9);

		makeLuaSprite('TailsField', 'TailsField', -500, -303);
		setLuaSpriteScrollFactor('TailsField', 0.9, 0.9);

	addLuaSprite('TailsFront', false);
	addLuaSprite('TailsField', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end