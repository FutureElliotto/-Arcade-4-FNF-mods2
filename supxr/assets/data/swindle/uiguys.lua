function onCreatePost()

	makeAnimatedLuaSprite('uiguy1', 'showstage/supxrr', 0, 0);
    	addAnimationByPrefix('uiguy1', 'supxs', 's0', 24, false)
	addLuaSprite('uiguy1', false)
	screenCenter('uiguy1')

	addLuaSprite('uiguy1', true)
	setProperty('uiguy1.x', 200)
	setProperty('uiguy1.y', 335)
	setProperty('uiguy1.camera', instanceArg('camOther'), false, true)


	makeAnimatedLuaSprite('uiguy2', 'showstage/supxrr', 0, 0);
    	addAnimationByPrefix('uiguy2', 'supxu', 'u0', 24, false)
	addLuaSprite('uiguy2', false)
	screenCenter('uiguy2')

	addLuaSprite('uiguy2', true)
	setProperty('uiguy2.x', 400)
	setProperty('uiguy2.y', 333)
	setProperty('uiguy2.camera', instanceArg('camOther'), false, true)


	makeAnimatedLuaSprite('uiguy3', 'showstage/supxrr', 0, 0);
    	addAnimationByPrefix('uiguy3', 'supxp', 'p0', 24, false)
	addLuaSprite('uiguy3', false)
	screenCenter('uiguy3')

	addLuaSprite('uiguy3', true)
	setProperty('uiguy3.x', 600)
	setProperty('uiguy3.y', 337)
	setProperty('uiguy3.camera', instanceArg('camOther'), false, true)


	makeAnimatedLuaSprite('uiguy5', 'showstage/supxrr', 0, 0);
    	addAnimationByPrefix('uiguy5', 'supxr', 'r0', 24, false)
	addLuaSprite('uiguy5', false)
	screenCenter('uiguy5')

	addLuaSprite('uiguy5', true)
	setProperty('uiguy5.x', 920)
	setProperty('uiguy5.y', 250)
	setProperty('uiguy5.camera', instanceArg('camOther'), false, true)


	makeAnimatedLuaSprite('uiguy4', 'showstage/supxrr', 0, 0);
    	addAnimationByPrefix('uiguy4', 'supxx', 'x0', 24, false)
	addLuaSprite('uiguy4', false)
	screenCenter('uiguy4')

	addLuaSprite('uiguy4', true)
	setProperty('uiguy4.x', 799)
	setProperty('uiguy4.y', 340)
	setProperty('uiguy4.camera', instanceArg('camOther'), false, true)


	scaleObject('uiguy1', 0.75, 0.75)
	scaleObject('uiguy2', 0.75, 0.75)
	scaleObject('uiguy3', 0.75, 0.75)
	scaleObject('uiguy4', 0.75, 0.75)
	scaleObject('uiguy5', 0.75, 0.75)


	setProperty('uiguy1.alpha', 0.000001)
	setProperty('uiguy2.alpha', 0.000001)
	setProperty('uiguy3.alpha', 0.000001)
	setProperty('uiguy4.alpha', 0.000001)
	setProperty('uiguy5.alpha', 0.000001)
end

function onBeatHit()
	if curBeat == 23 then

	playAnim('uiguy1', 'supxs')
	setProperty('uiguy1.alpha', 1)
	end

	if curBeat == 25 then

	playAnim('uiguy2', 'supxu')
	setProperty('uiguy2.alpha', 1)
	end

	if curBeat == 27 then

	playAnim('uiguy3', 'supxp')
	setProperty('uiguy3.alpha', 1)
	end

	if curBeat == 29 then

	playAnim('uiguy4', 'supxx')
	setProperty('uiguy4.alpha', 1)
	end

	if curBeat == 30 then

	playAnim('uiguy5', 'supxr')
	setProperty('uiguy5.alpha', 1)
	end

	if curBeat == 32 then

	doTweenY('googoo1', 'uiguy5', 800, 1.4, 'sineInOut')
	doTweenY('googoo2', 'uiguy4', 800, 1.5, 'sineInOut')
	doTweenY('googoo3', 'uiguy3', 800, 1.75, 'sineInOut')
	doTweenY('googoo4', 'uiguy2', 800, 1.85, 'sineInOut')
	doTweenY('googoo5', 'uiguy1', 800, 1.9, 'sineInOut')
	end

	if curBeat == 40 then
	setProperty('uiguy1.alpha', 0.000001)
	setProperty('uiguy2.alpha', 0.000001)
	setProperty('uiguy3.alpha', 0.000001)
	setProperty('uiguy4.alpha', 0.000001)
	setProperty('uiguy5.alpha', 0.000001)
	end

	if curBeat == 286 then

	setProperty('uiguy1.x', 200)
	setProperty('uiguy1.y', 335)

	setProperty('uiguy2.x', 400)
	setProperty('uiguy2.y', 333)

	setProperty('uiguy3.x', 600)
	setProperty('uiguy3.y', 337)

	setProperty('uiguy5.x', 920)
	setProperty('uiguy5.y', 250)

	setProperty('uiguy4.x', 799)
	setProperty('uiguy4.y', 340)
	end

	if curBeat == 287 then

	playAnim('uiguy1', 'supxs')
	setProperty('uiguy1.alpha', 1)
	end

	if curBeat == 289 then

	playAnim('uiguy2', 'supxu')
	setProperty('uiguy2.alpha', 1)
	end
	if curBeat == 291 then

	playAnim('uiguy3', 'supxp')
	setProperty('uiguy3.alpha', 1)
	end

	if curBeat == 293 then

	playAnim('uiguy4', 'supxx')
	setProperty('uiguy4.alpha', 1)
	end

	if curBeat == 295 then

	playAnim('uiguy5', 'supxr')
	setProperty('uiguy5.alpha', 1)
	end
	
	if curBeat == 297 then


	doTweenY('googoo1', 'uiguy5', 800, 1, 'quartOut')
	doTweenY('googoo2', 'uiguy4', 800, 1, 'quartOut')
	doTweenY('googoo3', 'uiguy3', 800, 1, 'quartOut')
	doTweenY('googoo4', 'uiguy2', 800, 1, 'quartOut')
	doTweenY('googoo5', 'uiguy1', 800, 1, 'quartOut')
	end
end