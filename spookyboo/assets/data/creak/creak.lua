introthingy = false;
down = 0;
poop = 520;
peepee = 1.6

function onCreate()
    makeLuaSprite('box', '', -600, -600);
    makeGraphic('box', 2000, 3000, '000000')
    setObjectCamera('box','hud');
    addLuaSprite('box')

    makeLuaSprite('bb', 'beach', 100, 200);
    scaleObject('bb', 3,2)
    addLuaSprite('bb')
    addLuaSprite('bb')

    makeLuaSprite('nn', 'bg-beach', 100, -290);
	setScrollFactor('nn', 1, 1);
	scaleObject('nn', 1.71, 1.71)
    addLuaSprite('nn')

    makeAnimatedLuaSprite('ss', "bobs",-20,-20)
    addAnimationByPrefix('ss', 'play', 'sunset',24, true)
    setObjectCamera('ss','hud');
    scaleObject('ss', 1.1, 1.1)
    addLuaSprite('ss')

    makeLuaSprite('vv', 'workout', -20, -20);
    setObjectCamera('vv','hud');
    scaleObject('vv', 0.4, 0.4)
    addLuaSprite('vv')
    
    makeAnimatedLuaSprite('hh', "hearth",450,220)
    addAnimationByPrefix('hh', 'anim1', 'anim1', 32, false)
    addAnimationByPrefix('hh', 'anim2', 'anim2', 32, false)
    setObjectCamera('hh','hud');
    addLuaSprite('hh')

    makeAnimatedLuaSprite('jj', "flashpoop",-50,0)
    addAnimationByPrefix('jj', 'play', 'idlelol',28, true)
    setObjectCamera('jj','hud');
    scaleObject('jj', 1, 1)
    addLuaSprite('jj', true)

    doTweenAlpha('hefli','hh', 0, 0.001, linear)
    doTweenAlpha('fffa','vv',0.7,0.001, circInOut)
    doTweenAlpha('bye1','nn', 0, 0.001, linear)
    doTweenAlpha('bye2','bb',0,0.001, circInOut)
    doTweenAlpha('bye3','ss',0,0.001, circInOut)
    doTweenAlpha('bye4','jj',0,0.001, circInOut)
end

function onSongStart()
    c(1)
  doTweenAlpha('sff','box', 0, 5, linear)
  cameraFlash('hud', "FFFFFF", 1, false)
  introthingy = true;
end

function onBeatHit()
    if curBeat == 8 then
    down = 0
    poop = 940
    elseif curBeat == 16 then
    introthingy = false
    c(1.2)
    elseif curBeat == 32 then
    c(1.45)
    cameraFlash('hud', "FFFFFF", 0.5, false)
    elseif curBeat == 62 then
    doTweenAlpha('sff','box', 1, 0.001, linear)
    doTweenAlpha('heflie','hh', 1, 0.001, linear)
    playAnim('hh','anim1')  
    elseif curBeat == 63 then
        playAnim('hh','anim2')  
    elseif curBeat ==64 then
        doTweenAlpha('ff','box', 0, 0.001, linear)
        doTweenAlpha('syuff','vv', 0, 0.001, linear)
        doTweenAlpha('hefliee','hh', 0, 0.001, linear)
        cameraFlash('hud', "FFFFFF", 0.5, false)
        c(1.1)
    elseif curBeat == 96 then
        cameraFlash('hud', "FFFFFF", 0.5, false)
        c(1.08)
    elseif curBeat == 127 then
        c(1.5)
        doTweenAlpha('syuff','vv', 0.1, 0.001, linear)
    elseif curBeat == 128 then
        cameraFlash('hud', "FFFFFF", 0.5, false)
    elseif curBeat == 160 then
        c(1.6)
        cameraFlash('hud', "FFFFFF", 0.5, false)
    elseif curBeat == 184 then
        c(1.65)
        doTweenAlpha('syuff','vv', 0.6, 1, linear)
    elseif curBeat == 188 then
    c(1.73)
    elseif curBeat == 189 then
    c(1.77)
    elseif curBeat == 190 then
    c(1.81)
    doTweenAlpha('hi','nn', 1, 0.001, linear)
    doTweenAlpha('hi1','bb',0.9,4, circInOut)
    elseif curBeat == 192 then
    doTweenAlpha('syquff','vv', 0.7, 0.001, linear)
    elseif curBeat == 224 then
    cameraFlash('hud', "FFFFFF", 0.5, false) 
    c(1.7)
    doTweenAlpha('syauff','vv', 0.6, 0.001, linear)
    elseif curBeat == 252 then
    doTweenAlpha('sz','vv', 0, 0.001, linear)
    doTweenAlpha('ffawer','box', 1, 0.001, linear)
    elseif curBeat == 256 then
        doTweenAlpha('faf','box', 0, 0.001, linear)
        doTweenAlpha('hiii','nn', 0, 0.001, linear)
        doTweenAlpha('hiii1','bb',0,0.0001, circInOut)
        cameraFlash('hud', "FFFFFF", 0.5, false)
        c(1.1)
    elseif curBeat == 316 then
        c(1.3)
    elseif curBeat == 319 then
        doTweenAlpha('faaf','box', 1, 1.7, linear)
    elseif curBeat == 324 then
        doTweenAlpha('faaaaf','vv', 0.7, 1.3, linear)
        doTweenAlpha('faaaaaaaf','ss', 0.9, 1.3, linear)
    elseif curBeat == 353 then
        doTweenAlpha('faaaaaaf','ss', 0, 0.8, linear)
    end

end

function onUpdate(elapsed)
    if introthingy == true then
        triggerEvent('Camera Follow Pos',poop ,0 + down)
        down= down + 0.1;
        end
end

function onStepHit()
if curStep == 286 or curStep == 1054 then
    doTweenAlpha('hello','jj',1,0.001, circInOut)
elseif curStep == 288 or curStep == 1056 then
    doTweenAlpha('goobbye','jj',0,0.001, circInOut)
end
end

function c(z, r)
    setProperty('camGame.zoom', z) 
    setProperty('defaultCamZoom', z) 

    if (r ~= nil) then setProperty('camHUD.angle', r) end
end