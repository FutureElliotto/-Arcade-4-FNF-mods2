function onCreate()

    makeLuaSprite('BG2', 'BG/Spider/BG2', 500, 500);
	addLuaSprite('BG2', false);
  	setProperty('BG2.antialiasing', true)
  	scaleObject('BG2', 1, 1);
  	setScrollFactor('BG2', 1.4, 1.4);

	makeLuaSprite('BG', 'BG/Spider/BG', 0, 0);
	addLuaSprite('BG', false);
  	setProperty('BG.antialiasing', true)
  	scaleObject('BG', 1, 1);

  end