function onCreate();
	
	makeLuaSprite('SongSelect/no-bitches-penkaru','SongSelect/no-bitches-penkaru',2,215);
	addLuaSprite('SongSelect/no-bitches-penkaru','true');
	setScrollFactor('SongSelect/no-bitches-penkaru',0,0);
	setObjectCamera('SongSelect/no-bitches-penkaru','hud');
	setObjectOrder('SongSelect/no-bitches-penkaru',2);
	
	runTimer('sair5',2.5);
}
function onTimerCompleted(sair);
	doTweenX('saindo1','SongSelect/no-bitches-penkaru',-526,1,'cubeInOut');
}