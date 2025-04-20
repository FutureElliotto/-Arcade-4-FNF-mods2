local fol = 'bg/pts/'

function onCreatePost()
    makeLuaSprite('white', '', 0, 0)
    setScrollFactor('white', 0, 0)
    makeGraphic('white', 3840, 2160, 'ffffff')
    addLuaSprite('white', false)
    setProperty('white.alpha', 0)
    screenCenter('white', 'xy')
    setObjectOrder('white', 2);

    -- im not doing for im rlly lazy
    makeLuaSprite('pot1', fol..'p1', 375, 725)
    setObjectOrder('pot1', 4);

    makeLuaSprite('pot2', fol..'p2', 1025, 675)
    setObjectOrder('pot2', 6);

    makeLuaSprite('pot3', fol..'p3', 775, 455)
    setObjectOrder('pot3', 4);

    makeLuaSprite('potPico', fol..'p4pico', 725, 580);
    setObjectOrder('potPico', 5);

    makeLuaSprite('potDarnell', fol..'p4darnell', 1025, 580);
    setObjectOrder('potDarnell', 5);

    setProperty('pot1.alpha', 0);
    setProperty('pot2.alpha', 0);
    setProperty('pot3.alpha', 0);
    setProperty('potPico.alpha', 0);
    setProperty('potDarnell.alpha', 0);
end

function onBeatHit()
    if curBeat == 449 then
        setProperty('dadGroup.alpha', 0);
        setProperty('dadGroup.color', '000000');
        setProperty('boyfriendGroup.color', '000000');
    end

    if curBeat == 452 then
        doTweenAlpha('neneIn', 'boyfriendGroup', 1, 2.5, 'quintIn');
        doTweenAlpha('whiteIn', 'white', 1, 2, 'quadIn');
    end

    if curBeat == 484 then
        doTweenAlpha('momoIn', 'dadGroup', 0.8, 2.5, 'quadIn');
    end

    if curBeat == 516 then
        doTweenAlpha('momoIn', 'dadGroup', 0.2, 0.75, 'quadInOut');
        cameraFlash('camGame', 'ffffff', 1, false);
        potAppear('1', true, 1, 2.5, -25);
    end

    if curBeat == 528 then
        potAppear('2', true, 1, 2.5, 25);
        cameraFlash('camGame', 'ffffff', 1, false);
    end

    if curBeat == 540 then
        potAppear('3', false, 1, 2.5, -25);
        cameraFlash('camGame', 'ffffff', 1, false);
    end

    if curBeat == 552 then
        cameraFlash('camGame', 'ffffff', 1, false);
        potAppear('3', false, 0, 0.5, 25);
        potAppear('2', true, 0, 0.5, -25);
        potAppear('1', true, 0, 0.5, 25);

        potAppear('Pico', true, 1, 2.5, -25);
        potAppear('Darnell', true, 1, 2.5, 25);
    end

    if curBeat == 567 then
        potAppear('Pico', true, 0, 0.05, 25);
        potAppear('Darnell', true, 0, 0.05, -25);
        doTweenAlpha('whiteIn', 'white', 0, 0.05, 'quadInOut');
    end

    if curBeat == 568 then
        doTweenAlpha('momoIn2', 'dadGroup', 1, 5, 'quintIn');
        doTweenColor('neneIn', 'boyfriendGroup', 'FFFFFF', 5, 'quadInOut');
        doTweenColor('momoIn', 'dadGroup', 'FFFFFF', 5, 'quadInOut');
        cameraFlash('camGame', '000000', 2.5, false);
    end
end

function potAppear(pot, tweenKind, potAlph, tweenDur, tweenOffset)
    if tweenKind == true then
        doTweenX('potcoollx'..pot, 'pot'..pot, getProperty('pot'..pot..'.x') + tweenOffset, tweenDur, 'quintOut');
    else
        doTweenY('potcoolly'..pot, 'pot'..pot, getProperty('pot'..pot..'.y') + tweenOffset, tweenDur, 'quintOut');
    end
    doTweenAlpha('potcoollalpha'..pot, 'pot'..pot, potAlph, tweenDur, 'quintOut');
end