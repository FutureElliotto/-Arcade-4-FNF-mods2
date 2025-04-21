function onCreate()
    makeLuaSprite('bb', 'thbg1', -300,-100)
    setObjectCamera('bb','hud');
    scaleObject('bb',2,2)
    makeLuaSprite('bb',true)

    makeLuaSprite('box', '', -600, -600);
    makeGraphic('box', 2000, 3000, '000000')
    setObjectCamera('box','hud');
    addLuaSprite('box')

    
    makeLuaSprite('vv', 'workout', -20, -20);
    setObjectCamera('vv','hud');
    scaleObject('vv', 0.4, 0.4)
    addLuaSprite('vv')
    doTweenAlpha('fffa','vv',0.7,0.001, circInOut)
    --doTweenAlpha('fat','box',0,0.0001, linear)
end

poop = 1
function onBeatHit()
if curBeat == 16 then
    cameraFlash('hud', 'FFFFF', 1, false)
    doTweenAlpha('fat','box',0,0.0001, linear)
    c(1.1)
    elseif curBeat == 46 then
    c(1)
    elseif curBeat == 48 then
    cameraFlash('hud', 'FFFFF', 1, false)
    doTweenAlpha('fbad','v',0.8,0.0001, linear)
    c(1.2)
    elseif curBeat == 78 then
    doTweenAlpha('ffbad','v',0,0.0001, linear)
    doTweenAlpha('boxze','box',1,0.0001, linear)
    elseif curBeat == 80 then
    doTweenAlpha('boxze','box',0,0.0001, linear)
    cameraFlash('hud', 'FFFFF', 1, false)
    c(0.85)
    elseif curBeat >= 144 and curBeat <= 147 or curBeat >=408 and curBeat <= 411 then
    c(poop)
    poop = poop + 0.1
    elseif curBeat == 148 then
    doTweenAlpha('boxze','box',0,0.0001, linear)
    cameraFlash('hud', 'FFFFF', 1, false)
    c(1.1)
    poop = 1
    elseif curBeat == 211 then
    doTweenAlpha('boxze','box',1,0.0001, linear)   
    elseif curBeat == 212 then
    doTweenAlpha('boxze','box',0,0.0001, linear)
    cameraFlash('hud', 'FFFFF', 1, false)
    c(1)
    doTweenAlpha('dad','dad',0,0.01,linear)      
    elseif curBeat == 242 then
    doTweenAlpha('dad2','dad',1,0.3,linear)
    elseif curBeat == 244 then
        doTweenAngle('poop','boyfriend',360,13, linear) --15
    elseif curBeat == 276 then
        doTweenAlpha('boxze','box',1,0.5, linear)
    elseif curBeat == 280 then
        doTweenAlpha('boxze','box',0,0.0001, linear)
        cameraFlash('hud', 'FFFFF', 1, false)
        c(0.85)
    elseif curBeat == 312 then
        cameraFlash('hud', 'FFFFF', 1, false)
        c(0.8)
    elseif curBeat == 343 then
        doTweenAlpha('boxze','box',1,0.0001, linear)
    elseif curBeat == 344 then
        doTweenAlpha('boxze','box',0,0.0001, linear)
        cameraFlash('hud', 'FFFFF', 1, false)
        c(0.765)
    elseif curBeat == 376 then
        cameraFlash('hud', 'FFFFF', 1, false)
        c(0.72)
    elseif curBeat == 412 then
        c(1)
        cameraFlash('hud', 'FFFFF', 1, false)
    elseif curBeat == 424 then
        doTweenAlpha('dad','dad',0,1.5,linear)   
        doTweenAlpha('boxze','box',1,3, linear)   
    end

end

function onSongStart()
    cameraFlash('hud', 'FFFFF', 1, false)
end

function c(z, r)
    setProperty('camGame.zoom', z) 
    setProperty('defaultCamZoom', z) 

    if (r ~= nil) then setProperty('camHUD.angle', r) end
end
