function onCreate();
	
	makeLuaSprite('SongSelect/high-shovel','SongSelect/high-shovel',-1,215);
	addLuaSprite('SongSelect/high-shovel','true');
	setScrollFactor('SongSelect/high-shovel',0,0);
	setObjectCamera('SongSelect/high-shovel','hud');
	setObjectOrder('SongSelect/high-shovel',2);
	
	runTimer('sair3',2.5);
}
function onTimerCompleted(sair);
	doTweenX('saindo1','SongSelect/high-shovel',-526,1,'cubeInOut');
}
function onEvent(name,value1,value2);
	if(name == 'Play Animation'){
	   if(value1 == 'inicio'){
            setProperty('smoke2.visible', false);
            setProperty('smoke.visible', false);
            setProperty('Smok2.visible', false);
            setProperty('HSfront.visible', true);
            setProperty('HSback.visible', true);
       }
        if(value1 == 'garcello'){
            setProperty('smoke2.visible', true);
            setProperty('smoke.visible', true);
            setProperty('Smok2.visible', true);
            setProperty('HSfront.visible', true);
            setProperty('HSback.visible', true);
	   }
	}
}