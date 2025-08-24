function onCreate()
	--creates the bar's object
	makeLuaSprite('SongSelect/die-batsards','SongSelect/die-batsards',1,215)
	addLuaSprite('SongSelect/die-batsards','true')
	setScrollFactor('SongSelect/die-batsards',0,0);
	setObjectCamera('SongSelect/die-batsards','other');
	setObjectOrder('SongSelect/die-batsards',2)

	--runs the timer for the bar to move off the screen
	runTimer('sair',2.5)
	
end

--makes the bar and text move off the screen
function onTimerCompleted(sair)
	doTweenX('saindo1','SongSelect/die-batsards',-526,1,'cubeInOut')
end