function onCreate()
	--creates the bar's object
	makeLuaSprite('SongSelect/no-heroes','SongSelect/no-heroes',1,215)
	addLuaSprite('SongSelect/no-heroes','true')
	setScrollFactor('SongSelect/no-heroes',0,0);
	setObjectCamera('SongSelect/no-heroes','hud');
	setObjectOrder('SongSelect/no-heroes',2)

	--runs the timer for the bar to move off the screen
	runTimer('sair',2.5)
	
end

--makes the bar and text move off the screen
function onTimerCompleted(sair)
	doTweenX('saindo1','SongSelect/no-heroes',-526,1,'cubeInOut')
end