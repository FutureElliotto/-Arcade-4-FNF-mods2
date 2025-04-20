function onCreate()
    setProperty('skipCountdown', true);
    setProperty('botplayTxt.x', 20000000000000); -- BEGONE !!
    setProperty('timeTxt.visible', false);
    setProperty('timeBar.visible', false);
    setProperty('timeBarBG.visible', false);
    setProperty('camHUD.alpha', 0);
end

function onCreatePost()
    doTweenZoom('introZoom2', 'camGame', 4, 0.01, 'linear');
    setProperty('cameraSpeed', 1000000000000000);
    triggerEvent('Camera Follow Pos', '650', '940');
end

-- healthbar x is 590, icons is 575 (reminder LOL)

function onSongStart()
    runTimer('kms', 0.05);
    hudIntro(getProperty('ClientPrefs.downScroll'), false);
    setProperty('camHUD.zoom', 1.025);
end

local healthBarIsFlip = true
local stickThere = false
function onUpdate(elapsed)
	if healthBarIsFlip == true then -- if you want to flip the health bar or not (set to true to flip, set false will turn back to normal)
		setProperty('healthBar.flipX', true)

		if getProperty('health') < 2 then
			stickThere = false
		end

		if getProperty('health') >= 2 then
			stickThere = true
		end
	else
		setProperty('healthBar.flipX', false)
	end
end

local iconSize = 0.975
function onUpdatePost(elapsed)
	if healthBarIsFlip == true then
		setProperty('iconP1.flipX', true)
		setProperty('iconP2.flipX', true)

		if stickThere == false then
			if getProperty('health') > 0 then
				setProperty('iconP1.x', 216+getProperty('health')*296+getProperty('healthBar.x')-343.5)
				setProperty('iconP2.x', 317+getProperty('health')*297+getProperty('healthBar.x')-343.5)
			end

			if getProperty('health') <= 0 then
				setProperty('iconP1.x', 216+getProperty('healthBar.x')-343.5)
				setProperty('iconP2.x', 317+getProperty('healthBar.x')-343.5)
			end
		end

		if stickThere == true then
		   setProperty('iconP1.x', 808+getProperty('healthBar.x')-343.5)
		   setProperty('iconP2.x', 911+getProperty('healthBar.x')-343.5)
		end

		--setProperty('iconP1.y', getProperty('healthBar.y') -75) -- icons stick to health bar (y position), I added if you guys want
		--setProperty('iconP2.y', getProperty('healthBar.y') -75)
	else
		setProperty('iconP1.flipX', false)
		setProperty('iconP2.flipX', false)
	end

    iconSize = math.lerp(iconSize, 0.9, boundTo(elapsed * 4, 0, 1));
    scaleObject('iconP1', iconSize, iconSize);
    scaleObject('iconP2', iconSize, iconSize);
end

function onBeatHit()
    iconSize = 0.95;

    if curBeat == 28 then
        doTweenY('Introhealth', 'healthBar', 640, 2, 'quintOut');
        doTweenY('introscore', 'scoreTxt', 670, 2, 'quintOut');
        doTweenY('introi1', 'iconP1', 575, 2, 'quintOut');
        doTweenY('introi2', 'iconP2', 575, 2, 'quintOut');
        doTweenZoom('introZoom', 'camHUD', 0.975, 2, 'quintOut');

        setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0) -- I FUCKING HATE PSYCH V1.0 WHY DO I GOTTA PUT THIS HERE WHY CANT I JHJSTUST PUT IT NHBDJFNKGSD I CRJDJASSKTAEREAEATE
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1)
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2)
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3)
          
        setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0 + 0)
        setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1 + 0)
        setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2 + 0)
        setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3 + 0)
    end

    if curBeat == 32 then
        triggerEvent('Camera Follow Pos', '', '');
        setProperty('cameraSpeed', 0.75);
    end
end

function onTimerCompleted(t)
    if t == 'kms' then
        setProperty('cameraSpeed', 0.15);
        doTweenZoom('introZoom2', 'camGame', 0.9, 12, 'sineOut');
        cameraSetTarget('fuck');
        setProperty('camHUD.alpha', 1);
    end
end

function boundTo(value, min, max)
	return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end
