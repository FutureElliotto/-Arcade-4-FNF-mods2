function onCreate();
	
	makeLuaSprite('SongSelect/tsuraran-fox','SongSelect/tsuraran-fox',4,215);
	addLuaSprite('SongSelect/tsuraran-fox','true');
	setScrollFactor('SongSelect/tsuraran-fox',0,0);
	setObjectCamera('SongSelect/tsuraran-fox','hud');
	setObjectOrder('SongSelect/tsuraran-fox',2);
	
	runTimer('sair10',2.5);
}
function onTimerCompleted(sair);

}