function onCreate()
	makeLuaSprite('sky', 'hatenaruins/sky', -1655, -1015);
	scaleObject('sky', 1.8, 1.8);
	setScrollFactor('sky', 1.15, 1.15);
	setProperty('sky.antialiasing', false);
	setObjectOrder('sky', 0);

	makeLuaSprite('sun', 'hatenaruins/sun', -1285, -995);
	scaleObject('sun', 1.5, 1.5);
	setScrollFactor('sun', 1, 1);
	setProperty('sun.antialiasing', false);
	setObjectOrder('sun', 1);

	makeLuaSprite('mountains', 'hatenaruins/mountains', -1600, -1260);
	scaleObject('mountains', 1.7, 1.7);
	setScrollFactor('mountains', 1.15, 1.15);
	setProperty('mountains.antialiasing', false);
	setObjectOrder('mountains', 2);

	makeLuaSprite('redwater', 'hatenaruins/redwater', -1280, -1060);
	scaleObject('redwater', 1.5, 1.5);
	setScrollFactor('redwater', 1.1, 1.1);
	setProperty('redwater.antialiasing', false);
	setObjectOrder('redwater', 3);

	makeLuaSprite('ground', 'hatenaruins/ground', -1340, -1125);
	scaleObject('ground', 1.5, 1.5);
	setScrollFactor('ground', 1, 1);
	setProperty('ground.antialiasing', fasle);
	setObjectOrder('ground', 4);

	setScrollFactor('gfGroup', 0.95, 0.95);
	setProperty('gfGroup.antialiasing', true);
	setObjectOrder('gfGroup', 5);

	setScrollFactor('dadGroup', 1, 1);
	setProperty('dadGroup.antialiasing', true);
	setObjectOrder('dadGroup', 6);

	setScrollFactor('boyfriendGroup', 1, 1);
	setProperty('boyfriendGroup.antialiasing', true);
	setObjectOrder('boyfriendGroup', 7);

	close(true);
end