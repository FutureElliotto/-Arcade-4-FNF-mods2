--fat
bonuscordin = 0;
Gsize = 0.155;
introthingy = false;
down = 1;
array = {gay, gay, gay}
--counter = array.length - 1;
--for ra = 1, 3 do
--  debugPrint(array[ra])
--end
--susX = [];--

baba = 710


debugPrint(array)

function onCreate()

    if(middlescroll == true) then
        bonuscordin = -320 
        baba = 390
    else
       bonuscordin = 0 
       baba = 710
    end
    makeAnimatedLuaSprite('puff', 'bgcharactpoops/fat', 735,200)
    addAnimationByPrefix('puff', 'idle', 'ms puff', 24, false);

    makeAnimatedLuaSprite('narcoman', 'bgcharactpoops/quba', 95,180)
    addAnimationByPrefix('narcoman', 'idle', 'fucke', 24, true);

    makeAnimatedLuaSprite('npc1', 'bgcharactpoops/mrmazna', 1180,255)
    addAnimationByPrefix('npc1', 'idle', 'mr mazna', 24, false);

    makeAnimatedLuaSprite('squidy', 'bgcharactpoops/squidwap', -90,145)
    addAnimationByPrefix('squidy', 'idle', 'squodpa', 24, false);

    makeAnimatedLuaSprite('pat', 'bgcharactpoops/patrick', 390,255)
    addAnimationByPrefix('pat', 'idle', 'pat', 24, false);

    makeAnimatedLuaSprite('kr', 'bgcharactpoops/mrkrabs', 970,275)
    addAnimationByPrefix('kr', 'idle', 'mrkrahbs', 24, false);

    makeAnimatedLuaSprite('bb', 'bgcharactpoops/bubblbass', 1290,205)
    addAnimationByPrefix('bb', 'idle', 'bubblebass', 24, false);

    makeAnimatedLuaSprite('jam', 'bgcharactpoops/jam', 1290,665)
    addAnimationByPrefix('jam', 'idle', 'jam', 24, false);

    makeAnimatedLuaSprite('f', 'bgcharactpoops/fddfdff', -290,505)
    addAnimationByPrefix('f', 'idle', 'LES go', 24, false);

    makeLuaSprite('table', 'tables', -50, 400)
    setScrollFactor('table', 1, 1);

    makeAnimatedLuaSprite('gg', 'hashtag', -2500,400)
    addAnimationByPrefix('gg', 'idle', 'loopbug', 24, true);


    makeLuaSprite('box', '', -600, -600);
    makeGraphic('box', 2000, 3000, '000000')
    setObjectCamera('box','hud');

    makeLuaSprite('vv', 'workout', -20, -20);
    setObjectCamera('vv','hud');
    scaleObject('vv', 0.4, 0.4)

    makeAnimatedLuaSprite('tt', 'introtext', 0,0)
    addAnimationByPrefix('tt', 'idle', 'intro', 18, false);
    setObjectCamera('tt','hud');
    screenCenter('tt')

    makeAnimatedLuaSprite('ss', 'ghostbob_laugh', 400,150)
    addAnimationByPrefix('ss', 'idle', 'ghostlebob', 18, false);
    setObjectCamera('ss','hud');
    --screenCenter('ss', x)

    makeLuaSprite('op', 'opp', baba, -340)
    setScrollFactor('op', 1, 1);
    setObjectCamera('op','hud');
    scaleObject('op', Gsize, Gsize)
    
    addLuaSprite('puff')
    addLuaSprite('npc1')
    addLuaSprite('narcoman')
    addLuaSprite('table')
    addLuaSprite('squidy')
    addLuaSprite('pat')
    addLuaSprite('kr')
    addLuaSprite('bb')
    addLuaSprite('gg')
    addLuaSprite('jam', true)
    addLuaSprite('f', true)
    addLuaSprite('box')
    addLuaSprite('vv', false)
    addLuaSprite('op', true)
    addLuaSprite('tt')
    addLuaSprite('ss')
    doTweenAlpha('fffa','tt',0,0.001, circInOut)
    doTweenAlpha('fffo','ss',0,0.001, circInOut)

   
end

fart = 1
agha = 1
function onBeatHit()
    if(curBeat % 2 == 0) then 
    playAnim('puff', 'idle', false)
    playAnim('npc1', 'idle', false)
    playAnim('squidy', 'idle', false)
    playAnim('kr', 'idle', false)
    playAnim('bb', 'idle', false)
    playAnim('jam', 'idle', false)
    playAnim('f', 'idle', false)
    end
-- EVENT STUFF
--
--
--
--
    if curBeat == 5 then
    doTweenAlpha('fffa','tt',0,1, circInOut)
    elseif curBeat == 8 then 
    doTweenAlpha('manzae', 'box', 0.1, 5, linear)
    cameraFlash('hud', '#FFFFFF', 0.5, false)
    introthingy = true;
    elseif curBeat == 39 then
    doTweenAlpha('manazae', 'box', 1, 0.001, linear)  
    elseif curBeat == 40 then 
    doTweenAlpha('manazae', 'box', 0, 0.01, linear)
    doTweenAlpha('manazaae', 'vv', 0.3, 5, linear)
    introthingy = false;
    c(0.9)
    cameraFlash('hud', '#FFFFFF', 0.5, false)
    doTweenAlpha('squidy','squidy',1,0.001, circInOut)
    elseif curBeat == 56 then
    doTweenAlpha('manqazaae', 'vv', 0, 0.001, linear)
    c(1, 0.5)
    elseif curBeat == 60 then
    c(1.1, -0.5)
    elseif curBeat == 64 then
    c(1.2, 1)
    elseif curBeat == 68 then 
    c(1.3, 0)
    elseif curBeat == 70 then 
    c(0.95)
    doTweenAlpha('m', 'box', 1, 0.01, linear)
    elseif curBeat == 76 then
    c(0.95)
    doTweenAlpha('m', 'box', 0, 0.01, linear)
    cameraFlash('hud', '#FFFFFF', 1, false)
    doTweenAlpha('fdofd','puff',1,0.001, circInOut)
    doTweenAlpha('fdofsd','npc1',1,0.001, circInOut)
    doTweenAlpha('fddofd','kr',1,0.001, circInOut)
    doTweenAlpha('fdobbfd','bb',1,0.001, circInOut)
    doTweenAlpha('fdaofd','jam',1,0.001, circInOut)
    doTweenAlpha('fdossfd','f',1,0.001, circInOut)
    elseif (curBeat >= 100 and curBeat <= 103 or curBeat >= 228 and curBeat <= 231 or curBeat >= 356 and curBeat <= 359) then
    fart = fart + 0.1
    c(fart)
    elseif (curBeat == 104) then
    c(0.92)
    elseif (curBeat == 134) then
    c(1.02)
    fart = 1
    doTweenAlpha('maqwnasazae', 'box', 0.1, 0.01, linear)
    doTweenAlpha('mqqanazaae', 'vv', 0.1, 0.001, linear)
    elseif (curBeat == 136) then
    c(1.2)
    doTweenAlpha('mqwqasazae', 'box', 0.2, 0.01, linear)
    doTweenAlpha('mqqwwanazaae', 'vv', 0.2, 0.001, linear)
    cameraFlash('hud', '#FFFFFF', 0.5, false) 
    elseif (curBeat == 166) then
    doTweenAlpha('maqwqnasazae', 'box', 1, 0.001, linear)
    doTweenAlpha('qwwazaae', 'vv', 0, 0.001, linear)
    elseif (curBeat == 168) then
    doTweenAlpha('maqqwqnasazae', 'box', 0, 0.001, linear)
    cameraFlash('hud', '#FFFFFF', 0.5, false) 
    doTweenAlpha('maqqqwqnasazae', 'gg', 0.45, 0.001, linear)
    c(1)
    elseif (curBeat >= 168 and curBeat <= 195) then
    agha = agha + 1;
    if(agha % 2 == 0) then
    c(1.2, -1)
    else    
    c(1.2, 1)
    end
-- checkpoint point
    elseif (curBeat == 196) then
    doTweenAlpha('noiii', 'box', 1, 0.001, linear) 
    doTweenAlpha('maqqqwqnasazae', 'gg', 0, 0.001, linear)
    elseif (curBeat == 197) then
    c(0.95, 0)
    doTweenAlpha("gbob", 'ss', 1, 0.001, linear)
    playAnim('ss', 'idle')
    elseif (curBeat == 200) then
        doTweenAlpha('zwqasazae', 'box', 0, 0.001, linear)
        cameraFlash('hud', '#FFFFFF', 0.5, false)
        doTweenAlpha("ggbob", 'ss', 0, 0.001, linear)
        c(0.95, 0)
    elseif (curBeat == 232) then
        c(0.95, 0)
        fart = 1
    elseif (curBeat == 262) then
        doTweenAlpha('lll', 'box', 1, 0.001, linear)
    elseif (curBeat ==  264) then
        doTweenAlpha('pk', 'box', 0, 0.001, linear)
        cameraFlash('hud', '#FFFFFF', 0.5, false) 
        doTweenAlpha('meaqqqwqnasazae', 'vv', 0.45, 0.001, linear)
        c(1.1)
    elseif (curBeat == 292) then
        c(1.3)
    elseif (curBeat == 295) then
        c(1.2)
        doTweenAlpha('mfaqzzsazae', 'box', 1, 0.001, linear)
    elseif (curBeat == 296) then
        doTweenAlpha('qzqwqnasazae', 'box', 0.1, 0.001, linear)
        cameraFlash('hud', '#FFFFFF', 0.5, false)
    elseif (curBeat == 312) then
        c(1.45)
        doTweenAlpha('mfaewsazae', 'box', 0.4, 0.001, linear)
        cameraFlash('hud', '#FFFFFF', 0.5, false)
    elseif (curBeat == 326) then
        c(0.95)
        doTweenAlpha('mfaqqwqnasazae', 'box', 1, 0.001, linear)
        --cameraFlash('hud', '#FFFFFF', 0.5, false)
    elseif (curBeat == 328) then
        cameraFlash('hud', '#FFFFFF', 0.5, false)
        doTweenAlpha('mew', 'box', 0, 0.001, linear)
        doTweenAlpha('tralala', 'vv', 0, 0.001, linear)
    elseif (curBeat == 360) then
        c(1)
    elseif (curBeat == 391) then
        c(2)
        doTweenAlpha('mew', 'box', 1, 0.001, linear)
    elseif (curBeat == 393) then
        cameraFlash('hud', '#FFFFFF', 0.5, false)
    end
-- MECHANIC STUFF!!!!!
--
--
--
--      woody has 0 balkan rage


    if curBeat == 3 then 
        moveGhost(2, 0.5)
    elseif curBeat == 5 then 
        moveGhost(3, 0.5)
    elseif curBeat == 7 then 
        doTweenY('fdgdg','op', -340, 0.25, circInOut)
    elseif curBeat == 151 then
        doTweenY('fdgdg','op', -50, 0.5, easeOutIn)
        moveGhost(2, 0.001)
    elseif curBeat == 159 then
        moveGhost(3, 1)
    elseif curBeat == 164 then
        moveGhost(1, 1)
    elseif curBeat == 175 then
        moveGhost(3, 0.5)
       -- debugPrint("fat")
    elseif curBeat == 180 then
        moveGhost(2, 0.1)
        --debugPrint("fat")
    elseif curBeat == 185 then
       -- debugPrint("HIIII")
    elseif curBeat == 186 then
        moveGhost(1, 0.2)
       -- debugPrint("WORKS!")
    elseif curBeat == 190 then
        moveGhost(3, 0.2)
       -- debugPrint(":)   woohoo!")
    elseif curBeat == 194 then
        moveGhost(1, 1)
    elseif curBeat == 196 then
        doTweenY('fwqwedgdg','op', -340, 2, circInOut)
    elseif curBeat == 261 then
        doTweenY('hi','op', -80, 2.3, circInOut)
    elseif curBeat == 268 then
        moveGhost(2, 1)
    elseif curBeat == 275 then
        moveGhost(3, 1)
    elseif curBeat == 280 then
        moveGhost(1, 0.3)
    elseif curBeat == 282 then
        moveGhost(2, 0.5)
    elseif curBeat == 290 then
        moveGhost(2, 0.5)
        --debugPrint("CONGRATS")
        --debugPrint("CONGRATS")
        --debugPrint("CONGRATS")
        --debugPrint("CONGRATS")
    elseif curBeat == 296 then
        doTweenY('hiii','op', -40, 3, circInOut)
        moveGhost(3, 0.5)
    elseif curBeat == 300 then
        moveGhost(2, 0.5)
    elseif curBeat == 304 then
        moveGhost(1, 0.5)
    elseif curBeat == 308 then
        moveGhost(2, 0.5)
    elseif curBeat == 312 then
        moveGhost(3, 0.5)
    elseif curBeat == 316 then
        moveGhost(2, 0.5)
    elseif curBeat == 320 then
        moveGhost(1, 1)
    elseif curBeat == 326 then
        doTweenY('fwqwedgdg','op', -340, 3, circInOut)
    end
--end


end

fat = 0;
function onUpdate(elapsed)
    if introthingy == true then
       c(0.6 + down);
        down= down - 0.00065;
    end
   

end

function onSongStart()
cameraFlash('hud', '#FFFFFF', 1, false)
doTweenY('fdgdg','op', -50, 0.8, easeOutIn)
--characters DIE.
doTweenAlpha('fdofd','puff',0,0.001, circInOut)
doTweenAlpha('fdofsd','npc1',0,0.001, circInOut)
doTweenAlpha('squidy','squidy',0,0.001, circInOut)
doTweenAlpha('fddofd','kr',0,0.001, circInOut)
doTweenAlpha('fdobbfd','bb',0,0.001, circInOut)
doTweenAlpha('fdaofd','jam',0,0.001, circInOut)
doTweenAlpha('fdossfd','f',0,0.001, circInOut)
introthingy = false;
doTweenAlpha('fffa','tt',1,0.8, circInOut)
playAnim('tt','idle')
doTweenAlpha('fdqqossfd','gg',0,0.001, circInOut)

end

function onSectionHit()
    playAnim('pat', 'idle', false)
end

function c(z, r)
    setProperty('camGame.zoom', z) 
    setProperty('defaultCamZoom', z) 

    if (r ~= nil) then setProperty('camHUD.angle', r) end
end

function moveGhost(pos, time)
    --if (time ~= nil) then time = 0.5 end

    if(pos == 1)then
        doTweenX('fdgdg3','op', (710 + bonuscordin), time, easeOutIn) 
    elseif(pos == 2) then
        doTweenX('fdgdg1','op', (830 + bonuscordin), time, easeOutIn)
    elseif(pos == 3) then
        doTweenX('fdgdg2','op', (945 + bonuscordin), time, easeOutIn) 
    end
    
end

