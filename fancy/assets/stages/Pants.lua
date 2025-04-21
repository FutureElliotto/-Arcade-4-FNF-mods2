function onCreate()
	makeLuaSprite('BG', 'BG/Pants/BG', 0, 0);
	addLuaSprite('BG', false);
  	setProperty('BG.antialiasing', true)
  	scaleObject('BG', 1, 1);

  	makeAnimatedLuaSprite('Sister','BG/Pants/fancysis', 1730, 710)
  	addAnimationByPrefix('Sister','idle','Fancy_Bounce',24, false)
  	addLuaSprite('Sister', false);
    scaleObject('Sister', 1, 1);

  end

  function onBeatHit()--for every beat
	if curBeat % 2 == 0 then
	    objectPlayAnimation('Sister','idle',true)
	end
end