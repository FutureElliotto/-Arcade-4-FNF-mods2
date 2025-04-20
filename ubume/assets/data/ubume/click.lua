allowCountdown = false

test = {25, 25, 25};
function onCreatePost()
	makeLuaSprite('fuckmylife', 'bg/reedy', -270, -100);
    addLuaSprite('fuckmylife', true);
    scaleObject('fuckmylife', 0.2, 0.2);
    screenCenter('fuckmylife', 'pee');
    setProperty('fuckmylife.x', getProperty('fuckmylife.x') + 20);
    setProperty('fuckmylife.y', getProperty('fuckmylife.y') + 550);
    setProperty('fuckmylife.color', 0x808080);
    --setScrollFactor('fuckmylife', 0, 0);
    doTweenY('loopTween1', 'fuckmylife', getProperty('fuckmylife.y') + 10, 2, 'quadInOut');
    setProperty('iconP1.y', 725);
    setProperty('iconP2.y', 725);
    setProperty('healthBar.y', 725);
    setProperty('scoreTxt.y', 725);
end

function onStartCountdown()
	if not allowCountdown then
		characterPlayAnim('bf', 'idle', true)
		return Function_Stop
	end
	return Function_Continue
end

function boundTo(value, min, max)
	return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

local hudSize = 1
local realScore = 0
local scoreTxtSize = 0.975;
function onUpdatePost(elapsed)
    if keyboardJustPressed('SPACE') or keyboardJustPressed('ENTER') then
        doTweenAlpha('byebye', 'fuckmylife', 0, 2, 'quintOut');
        doTweenX('byebye1', 'fuckmylife.scale', 0, 1, 'quintIn');
        doTweenY('byebye2', 'fuckmylife.scale', 0, 1, 'quintIn');
        allowCountdown = true;
        startCountdown();
    end

    if curBeat > 96 then
        hudSize = math.lerp(hudSize, 0.975, boundTo(elapsed * 4, 0, 1));
        setProperty('camHUD.zoom', hudSize);
    end
    
    scaleObject('scoreTxt', scoreTxtSize, scoreTxtSize);
    screenCenter('scoreTxt', 'x');
    if botPlay then
        setProperty('scoreTxt.text', 'BOTPLAY');
        setProperty('scoreTxt.alpha', getProperty('botplayTxt.alpha'));
    else
        realScore = math.floor(math.lerp(realScore, score, boundTo(elapsed * 4, 0, 1))); -- HELLL FUCKKINGG YEAHHH LERPS IN LUA !!!! 11!
        setProperty('scoreTxt.text', 'Score: '..realScore);
    end
end

function onTweenCompleted(t)
    if t == 'loopTween1' then
        doTweenY('loopTween2', 'fuckmylife', getProperty('fuckmylife.y') - 10, 2, 'quadInOut');
    end

    if t == 'loopTween2' then
        doTweenY('loopTween1', 'fuckmylife', getProperty('fuckmylife.y') + 10, 2, 'quadInOut');
    end
end
