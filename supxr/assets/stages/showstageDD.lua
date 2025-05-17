function onCreate()

	makeLuaSprite('skyy', 'showstage/sky', -2800, -1900);
	setScrollFactor('skyy', 0.1, 0);
	addLuaSprite('skyy', false);

	setObjectOrder('skyy', '1')

	makeLuaSprite('moonn', 'showstage/moon', -160, -230);
	setScrollFactor('moonn', 0.5, 0.5);
	addLuaSprite('moonn', false);

	setObjectOrder('moonn', '2')

	makeAnimatedLuaSprite('seaa', 'showstage/sea', -4070, 380)
    	addAnimationByPrefix('seaa', 'SEAS', 'SEA00', 24, true)
	setScrollFactor('seaa', 0.7, 0.7)
	addLuaSprite('seaa', false);
	scaleObject('seaa', 1.75, 1.25)

	setObjectOrder('seaa', '3')
 
	makeLuaSprite('rock2', 'showstage/Rocks 2', -1100, 650);
	setScrollFactor('rock2', 0.75, 0.75);
	addLuaSprite('rock2', false);

	setObjectOrder('rock2', '4')


	makeLuaSprite('rock1', 'showstage/Rocks 1', 2200, 350);
	setScrollFactor('rock1', 0.75, 0.75);
	addLuaSprite('rock1', true);

	setObjectOrder('rock1', '5')

	makeLuaSprite('palm1', 'showstage/treeleftbg', -1600, -1450);
	setScrollFactor('palm1', 0.8, 0.8);
	addLuaSprite('palm1', false);
	scaleObject('palm1', 0.9, 0.9)

	setObjectOrder('palm1', '6')

	makeLuaSprite('palm2', 'showstage/treerightbg', 1800, -1450);
	setScrollFactor('palm2', 0.8, 0.8);
	addLuaSprite('palm2', false);
	scaleObject('palm2', 0.9, 0.9)

	setObjectOrder('palm2', '7')

	makeAnimatedLuaSprite('speaker', 'showstage/mainstage', -1100, -600)
    	addAnimationByPrefix('speaker', 'speak', 'stage0', 24, false)
	setScrollFactor('speaker', 1, 1)
	addLuaSprite('speaker', false);

	setObjectOrder('speaker', '8')

	makeAnimatedLuaSprite('speaker1', 'showstage/speakerleft', 20, 200)
    	addAnimationByPrefix('speaker1', 'speakss1', 'speaker 10', 24, false)
	setScrollFactor('speaker1', 1, 1)
	addLuaSprite('speaker1', false);

	setObjectOrder('speaker1', '9')

	makeAnimatedLuaSprite('speaker2', 'showstage/speakerright', 790, 200)
    	addAnimationByPrefix('speaker2', 'speakss2', 'speaker 20', 24, false)
	setScrollFactor('speaker2', 1, 1)
	addLuaSprite('speaker2', false);

	setObjectOrder('speaker2', '10')

	makeLuaSprite('border1', 'showstage/border left', -3280, 600);
	setScrollFactor('border1', 1, 1);
	addLuaSprite('border1', true);

	setObjectOrder('border1', '11')

	makeLuaSprite('border2', 'showstage/border right', 2520, 600);
	setScrollFactor('border2', 1, 1);
	addLuaSprite('border2', true);


	setObjectOrder('border2', '12')

	makeAnimatedLuaSprite('guysff', 'showstage/shapes', -560, 960)
    	addAnimationByPrefix('guysff', 'gugssy', 'cheer40', 24, false)

    	addAnimationByPrefix('guysff', 'gugs', 'guys40', 24, false)

	setObjectOrder('guysff', '25')

	setScrollFactor('guysff', 1.1, 1.1)
	addLuaSprite('guysff', true);

	makeAnimatedLuaSprite('guys', 'showstage/farguys', -860, 1060)
    	addAnimationByPrefix('guys', 'gugsy', 'cheer30', 24, false)

    	addAnimationByPrefix('guys', 'gug', 'guys30', 24, false)

	setObjectOrder('guys', '26')

	setScrollFactor('guys', 1.3, 1.1)
	addLuaSprite('guys', true);

	makeAnimatedLuaSprite('guys2', 'showstage/screenguys', -660, 1060)
    	addAnimationByPrefix('guys2', 'gugsy2', 'cheer20', 24, false)

	setObjectOrder('guys2', '27')

    	addAnimationByPrefix('guys2', 'gug2', 'guys20', 24, false)


	setScrollFactor('guys2', 1.5, 1.1)
	addLuaSprite('guys2', true);

	makeAnimatedLuaSprite('guys3', 'showstage/nearscreenguys', -1160, 860)
    	addAnimationByPrefix('guys3', 'gugsy3', 'cheer10', 24, false)

    	addAnimationByPrefix('guys3', 'gug3', 'guys10', 24, false)




	setScrollFactor('guys3', 1.75, 1.1)
	addLuaSprite('guys3', true);

	makeLuaSprite('palm3', 'showstage/treeleftfg', -2200, -750);
	setScrollFactor('palm3', 1.5, 1.1);
	addLuaSprite('palm3', true);
	scaleObject('palm3', 0.9, 0.9)

	setObjectOrder('palm3', '14')

	makeLuaSprite('palm4', 'showstage/treerightfg', 1900, -750);
	setScrollFactor('palm4', 1.5, 1.1);
	addLuaSprite('palm4', true);
	scaleObject('palm4', 0.9, 0.9)

	setObjectOrder('palm4', '13')


	makeLuaSprite('blend', 'showstage/lights', -500, -700);
	setScrollFactor('blend', 1.3, 1.2);
	addLuaSprite('blend', true);
	scaleObject('blend', 0.8, 0.8)


	addOffset('guysff', 'gugssy', 0, 130)
	addOffset('guysff', 'gugs', 0, 0)

	addOffset('guys', 'gugsy', 20, 330)
	addOffset('guys', 'gug', 0, 0)

	addOffset('guys2', 'gugsy2', 20, 130)
	addOffset('guys2', 'gug2', 0, 0)

	addOffset('guys3', 'gugsy3', 0, 800)
	addOffset('guys3', 'gug3', 0, 0)

end

function onCreatePost()

	makeAnimatedLuaSprite('trun', 'showstage/turntable', 350, 410)

    	addAnimationByPrefix('trun', 'idle', 'turnreg0', 24, true)
	addOffset('trun', 'idle', 0, 0)

    	addAnimationByPrefix('trun', 'idle-alt', 'turnup0', 24, true)
	addOffset('trun', 'idle-alt', 0, 0)

    	addAnimationByPrefix('trun', 'idle-galt', 'turnup20', 24, true)
	addOffset('trun', 'idle-galt', 0, 0)

    	addAnimationByPrefix('trun', 'leftpose', 'left0', 24, false)
	addOffset('trun', 'leftpose', 0, 44)

    	addAnimationByPrefix('trun', 'rightpose', 'right0', 24, false)
	addOffset('trun', 'rightpose', 0, 35)

    	addAnimationByPrefix('trun', 'uppose', 'up0', 24, false)
	addOffset('trun', 'uppose', 0, 58)

    	addAnimationByPrefix('trun', 'downpose', 'down0', 24, false)
	addOffset('trun', 'downpose', 0, 41)

    	addAnimationByPrefix('trun', 'turnup', 'turninup0', 24, false)
	addOffset('trun', 'turnup', 0, 26)

    	addAnimationByPrefix('trun', 'turnupper', 'turninupper0', 24, false)
	addOffset('trun', 'turnupper', 0, 14)

	setScrollFactor('trun', 1, 1)
	addLuaSprite('trun', false);

	setObjectOrder('trun', 19)
	setObjectOrder('gfGroup', '20')
	setObjectOrder('boyfriendGroup', '23')
	setObjectOrder('dadGroup', '22')

	setObjectOrder('guys3', '28')

	setBlendMode('blend', 'add')
	setObjectOrder('blend', '24')


	playAnim('trun', 'idle')

end

function onBeatHit()
	if curBeat == 290 then
		setObjectOrder('trun', '21')
	end
end



