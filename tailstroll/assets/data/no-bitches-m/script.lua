function onCreate();
	
	makeLuaSprite('SongSelect/no-bitches-matasaki','SongSelect/no-bitches-matasaki',2,215);
	addLuaSprite('SongSelect/no-bitches-matasaki','true');
	setScrollFactor('SongSelect/no-bitches-matasaki',0,0);
	setObjectCamera('SongSelect/no-bitches-matasaki','hud');
	setObjectOrder('SongSelect/no-bitches-matasaki',2);
	
	runTimer('sair4',2.5);
}
function onTimerCompleted(sair);
	doTweenX('saindo1','SongSelect/no-bitches-matasaki',-526,1,'cubeInOut');
}