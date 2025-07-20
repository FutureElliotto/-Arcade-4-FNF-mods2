function onCreate()
	-- background shit
	makeLuaSprite('starrystage', 'starrystage', 0, 0);
	setScrollFactor('starrystage', 1, 1);
	addLuaSprite('starrystage', false);

	makeLuaSprite('drumkit', 'drumkit', 0, 0);
	setScrollFactor('drumkit', 1, 1);
	addLuaSprite('drumkit', false);
	
	makeLuaSprite('starryfrontstagelights', 'starryfrontstagelights', 0, 0);
	setScrollFactor('starryfrontstagelights', 1.1, 1.1);
	addLuaSprite('starryfrontstagelights', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end