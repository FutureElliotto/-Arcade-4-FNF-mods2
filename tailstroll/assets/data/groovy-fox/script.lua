function onCreate()
	--creates the bar's object
	makeLuaSprite('SongSelect/groovy-fox','SongSelect/groovy-fox',1,215)
	addLuaSprite('SongSelect/groovy-fox','true')
	setScrollFactor('SongSelect/groovy-fox',0,0);
	setObjectCamera('SongSelect/groovy-fox','hud');
	setObjectOrder('SongSelect/groovy-fox',2)

	--runs the timer for the bar to move off the screen
	runTimer('sair',2.5)
	
end

--makes the bar and text move off the screen
function onTimerCompleted(sair)
	doTweenX('saindo1','SongSelect/groovy-fox',-526,1,'cubeInOut')
end