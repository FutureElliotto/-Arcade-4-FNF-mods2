function onCreate()
	-- background shit
	makeLuaSprite('starrystagelightson', 'starrystagelightson', 0, 0);
	setScrollFactor('starrystagelightson', 1, 1);
	addLuaSprite('starrystagelightson', false);

	makeLuaSprite('drumkit', 'drumkit', 0, 0);
	setScrollFactor('drumkit', 1, 1);
	addLuaSprite('drumkit', false);
	
	makeLuaSprite('stagelights', 'stagelights', 0, 0);
	setScrollFactor('stagelights', 1, 1);
	addLuaSprite('stagelights', true);

	makeLuaSprite('starryfrontstagelights', 'starryfrontstagelights', 0, 0);
	setScrollFactor('starryfrontstagelights', 1.1, 1.1);
	addLuaSprite('starryfrontstagelights', true);

	makeLuaSprite('starrycolors', 'starrycolors', 0, 0);
	setScrollFactor('starrycolors', 1, 1);
	addLuaSprite('starrycolors', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end