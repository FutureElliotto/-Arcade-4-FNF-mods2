function onCreate();
	
	makeLuaSprite('SongSelect/talentless-fox','SongSelect/talentless-fox',1,215);
	addLuaSprite('SongSelect/talentless-fox','true');
	setScrollFactor('SongSelect/talentless-fox',0,0);
	setObjectCamera('SongSelect/talentless-fox','hud');
	setObjectOrder('SongSelect/talentless-fox',2);
	
	runTimer('sair8',2.5);
}
function onTimerCompleted(sair);
	doTweenX('saindo1','SongSelect/talentless-fox',-526,1,'cubeInOut');
}