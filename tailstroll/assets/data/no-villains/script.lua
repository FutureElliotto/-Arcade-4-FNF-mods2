function onCreate();
	
	makeLuaSprite('SongSelect/no-villains','SongSelect/no-villains',1,215);
	addLuaSprite('SongSelect/no-villains','true');
	setScrollFactor('SongSelect/no-villains',0,0);
	setObjectCamera('SongSelect/no-villains','hud');
	setObjectOrder('SongSelect/no-villains',2);
	
	runTimer('sair7',2.5);
}
function onTimerCompleted(sair);
	doTweenX('saindo1','SongSelect/no-villains',-526,1,'cubeInOut');
}