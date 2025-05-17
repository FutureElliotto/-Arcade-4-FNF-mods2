--script created by TIRAMISUSUUUU (mc steve)

function onCreatePost()


	--THIS IS OPPONENT

	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)

	makeAnimatedLuaSprite('icon thing', 'dadicons', 650, 575)
    	addAnimationByPrefix('icon thing', 'start2', 'Start0', 24, false)
    	addAnimationByPrefix('icon thing', 'icon-bf.png', 'iconreg', 24, false)
    	addAnimationByPrefix('icon thing', 'dying2', 'icondying00', 24, false)


	addLuaSprite('icon thing',false)

	setProperty('icon thing.camera', instanceArg('camHUD'), false, true)
	setObjectOrder('icon thing', 40)

	--THIS IS BF

	makeAnimatedLuaSprite('icon thing2', 'bficons2', 750, 575)
    	addAnimationByPrefix('icon thing2', 'icon-bf.png22', 'icon reg00', 24, false)
    	addAnimationByPrefix('icon thing2', 'dying', 'icondying00', 24, false)
	playAnim('icon thing2', 'icon-bf.png22')

	addLuaSprite('icon thing2',false)

	setProperty('icon thing2.camera', instanceArg('camHUD'), false, true)

	setObjectOrder('icon thing2', 41)

	setProperty('icon thing.y', getProperty('iconP2.y')-10)
	setProperty('icon thing2.y', getProperty('iconP1.y'))

	setProperty('icon thing.alpha', 0.00001)
	setProperty('icon thing2.alpha', 0.00001)

	if startedCountdown == true then
		doTweenAlpha('icon thingalp', 'icon thing', 1, 1.4, 'linear')
		doTweenAlpha('icon thingalp2', 'icon thing2', 1, 1.4, 'linear')

	end
	playAnim('icon thing2', 'icon-bf.png22')
	playAnim('icon thing', 'icon-bf.png')
end


function onUpdate()
	setProperty('icon thing.x', getProperty('iconP2.x')+10)
	setProperty('icon thing2.x', getProperty('iconP1.x')+20)

  	if getProperty('icon thing2.animation.finished') and getProperty('health') > 0.4 then
		playAnim('icon thing2', 'icon-bf.png22')
	elseif getProperty('icon thing2.animation.finished') and getProperty('health') <= 0.4 then
		playAnim('icon thing2', 'dying')
		end

  	if getProperty('icon thing.animation.finished') and getProperty('health') > 0 and getProperty('health') < 1.6  then
		playAnim('icon thing', 'icon-bf.png')
	elseif getProperty('icon thing.animation.finished') and getProperty('health') >= 1.6 then
		playAnim('icon thing', 'dying2')
	end
end

function onBeatHit()

	doTweenX('scale1','icon thing.scale', 1.1, 0.001, 'linear')
	doTweenY('scale11','icon thing.scale', 1.1, 0.001, 'linear')
	doTweenX('scale2','icon thing2.scale', 1.1, 0.001, 'linear')
	doTweenY('scale22','icon thing2.scale', 1.1, 0.001, 'linear')

end

function onTweenCompleted(tag)
	if tag == 'scale1' then
		doTweenX('scale1','icon thing.scale', 0.9, 0.13, 'circOut')
		doTweenX('scale2','icon thing2.scale', 0.9, 0.13, 'circOut')
	end
	if tag == 'scale11' then
		doTweenY('scale11','icon thing.scale', 0.9, 0.13, 'circOut')
		doTweenY('scale22','icon thing2.scale', 0.9, 0.13, 'circOut')
	end
	if tag == 'icon thingalp' then
		playAnim('icon thing2', 'startt')
	end
end

function onCreate()
	setProperty('scoreTxt.visible', false)
	setProperty('showRating', false)
	setProperty('showComboNum', false)

end