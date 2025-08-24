function onCreate();
	
	makeLuaSprite('SongSelect/taste-for-blood','SongSelect/taste-for-blood',1,215);
	addLuaSprite('SongSelect/taste-for-blood','true');
	setScrollFactor('SongSelect/taste-for-blood',0,0);
	setObjectCamera('SongSelect/taste-for-blood','Other');
	setObjectOrder('SongSelect/taste-for-blood',2);
	
	runTimer('sair9',2.5);
}
function onTimerCompleted(sair);
	doTweenX('saindo1','SongSelect/taste-for-blood',-526,1,'cubeInOut');
}