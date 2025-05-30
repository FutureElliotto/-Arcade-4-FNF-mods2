local working = true
function onCreate()

    makeLuaSprite('UpperBar(With HUD)', 'empty', -110, -260)
    makeGraphic('UpperBar(With HUD)', 1500, 350, '000000')
    setObjectCamera('UpperBar(With HUD)', 'camOther')
    addLuaSprite('UpperBar(With HUD)', false)

    makeLuaSprite('LowerBar(With HUD)', 'empty', -110, 630)
    makeGraphic('LowerBar(With HUD)', 1500, 350, '000000')
    setObjectCamera('LowerBar(With HUD)', 'camOther')
    addLuaSprite('LowerBar(With HUD)', false)

    UpperBar = getProperty('UpperBar(With HUD).y')
    LowerBar = getProperty('LowerBar(With HUD).y')

    makeLuaSprite('flashblack', '', 0, 0);
    makeGraphic('flashblack',1280,720,'000000')
      
      setLuaSpriteScrollFactor('flashblack',0,0)
          setObjectCamera('flashblack', 'camGame')
      setProperty('flashblack.scale.x',2)
      setProperty('flashblack.scale.y',2)
    setProperty('flashblack.alpha',1)
    makeLuaSprite('AppleJuice', 'ex/AppleJuice')
    scaleObject('AppleJuice',1.3,1.3)
    screenCenter('AppleJuice')

    setObjectCamera('AppleJuice', 'camOther')
    setProperty('AppleJuice.alpha', 0)

    makeAnimatedLuaSprite('title1', 'ex/title1')
    scaleObject('title1',.8,.8)
    screenCenter('title1')
    addLuaSprite('title1', true)
    setObjectCamera('title1', 'camOther')

    makeLuaSprite('title1Alt', 'ex/title1Alt')
    scaleObject('title1Alt',.8,.8)
    screenCenter('title1Alt')
    addLuaSprite('title1Alt', true)
    setObjectCamera('title1Alt', 'camOther')
    setProperty('title1Alt.alpha', 0)
    

setSpriteShader('title1', 'glitch')

    makeAnimatedLuaSprite('title2', 'ex/title2', 340, 130)
    scaleObject('title2',.6,.6)
    addLuaSprite('title2', true)
    setObjectCamera('title2', 'camOther')



    makeLuaSprite('OH', 'ex/OH')
    scaleObject('OH',1.1,1.1)
    screenCenter('OH')
    addLuaSprite('OH', true)
    setObjectCamera('OH', 'camOther')
    setProperty('OH.alpha', 0)

    makeLuaSprite('YEAH', 'ex/YEAH')
    scaleObject('YEAH',1.1,1.1)
    screenCenter('YEAH')
    addLuaSprite('YEAH', true)
    setObjectCamera('YEAH', 'camOther')
    setProperty('YEAH.alpha', 0)

    makeAnimatedLuaSprite('yeahanim', 'ex/yeahanim')
    scaleObject('yeahanim',1.1,1.1)
    screenCenter('yeahanim')
    addLuaSprite('yeahanim', true)
    setObjectCamera('yeahanim', 'camOther')
    setProperty('yeahanim.alpha', 0)
    addAnimationByPrefix('yeahanim','hehe','play',200,true)

    makeAnimatedLuaSprite('Static', 'ex/Static')
    scaleObject('Static',4,4)
    screenCenter('yeahStaticanim')
    addLuaSprite('Static', true)
    setObjectCamera('Static', 'camOther')
    screenCenter('Static')
    setProperty('Static.alpha', 0)
    addAnimationByPrefix('Static','eferf','Static Madness',24,true)

    makeLuaSprite('HA', 'ex/HA')
    scaleObject('HA',1.1,1.1)
    screenCenter('HA')
    addLuaSprite('HA', true)
    setObjectCamera('HA', 'camOther')
    setProperty('HA.alpha', 0)

    makeLuaSprite('HAHA', 'ex/HAHA')
    scaleObject('HAHA',1.1,1.1)
    screenCenter('HAHA')
    addLuaSprite('HAHA', true)
    setObjectCamera('HAHA', 'camOther')
    setProperty('HAHA.alpha', 0)

    
    setProperty('camHUD.alpha', 0)
    setProperty('title1.alpha', 0)
    setProperty('title2.alpha', 0)

    makeAnimatedLuaSprite('glitch', 'ex/glitch', 340, 470) -- -290
    scaleObject('glitch', 1.25, 1.25)
   addAnimationByPrefix('glitch','um','play',90,true)
   addLuaSprite('glitch', false)
   setProperty('glitch.alpha', 0)
    setObjectOrder('glitch',1)

    makeLuaSprite('dead1', 'ex/dead', 1000, 400)
    scaleObject('dead1', 1, 1)
    addLuaSprite('dead1', false)
    setScrollFactor('dead1', 1.25, 1.25)
    setObjectOrder('dead1',2)

    makeLuaSprite('dead2', 'ex/dead', 1350, 400)
    scaleObject('dead2', 1, 1)
    addLuaSprite('dead2', false)
    setScrollFactor('dead2', 1.25, 1.25)
    setObjectOrder('dead2',2)

    makeLuaSprite('dead3', 'ex/dead', 1700, 400)
    scaleObject('dead3', 1, 1)
    addLuaSprite('dead3', false)
    setScrollFactor('dead3', 1.25, 1.25)
    setObjectOrder('dead3',2)

    makeLuaSprite('dead4', 'ex/dead', 650, 400)
    scaleObject('dead4', 1, 1)
    addLuaSprite('dead4', false)
    setScrollFactor('dead4', 1.25, 1.25)
    setObjectOrder('dead4',2)

    makeLuaSprite('dead5', 'ex/dead', 300, 400)
    scaleObject('dead5', 1, 1)
    addLuaSprite('dead5', false)
    setScrollFactor('dead5', 1.25, 1.25)
    setObjectOrder('dead5',2)

    
    makeLuaSprite('dead6', 'ex/dead', -50, 400)
    scaleObject('dead6', 1, 1)
    addLuaSprite('dead6', false)
    setScrollFactor('dead6', 1.25, 1.25)
    setObjectOrder('dead6',2)

    makeLuaSprite('dead7', 'ex/dead', -400, 400)
    scaleObject('dead7', 1, 1)
    addLuaSprite('dead7', false)
    setScrollFactor('dead7', 1.25, 1.25)
    setObjectOrder('dead7',2)

    makeLuaSprite('dead8', 'ex/dead', 2050, 400)
    scaleObject('dead8', 1, 1)
    addLuaSprite('dead8', false)
    setScrollFactor('dead8', 1.25, 1.25)
    setObjectOrder('dead8',2)

    makeLuaSprite('dead9', 'ex/dead', 2400, 400)
    scaleObject('dead9', 1, 1)
    addLuaSprite('dead9', false)
    setScrollFactor('dead9', 1.25, 1.25)
    setObjectOrder('dead9', 2)


    makeLuaSprite('deadclose', 'ex/deadclose', 1000, 400)
    scaleObject('deadclose', 1, 1)
    addLuaSprite('deadclose', true)
    setScrollFactor('deadclose', 1.1, 1.1)
    setProperty('deadclose.alpha', 0)


    makeLuaSprite('deadclose2', 'ex/deadclose2', 470, 400)
    scaleObject('deadclose2', 1, 1)
    addLuaSprite('deadclose2', true)
 setScrollFactor('deadclose2', 1.1, 1.1)
 setProperty('deadclose2.alpha', 0)


 makeLuaSprite('verydead1', 'ex/verydead', -1600, 900)
 scaleObject('verydead1', 1, 1)
 addLuaSprite('verydead1', true)
setScrollFactor('verydead1', 1.1, 1.1)
setProperty('verydead1.alpha', 0)

 makeLuaSprite('verydead2', 'ex/verydead', -300, 900)
 scaleObject('verydead2', 1, 1)
 addLuaSprite('verydead2', true)
setScrollFactor('verydead2', 1.1, 1.1)
setProperty('verydead2.alpha', 0)

makeLuaSprite('verydead3', 'ex/verydead', 1000, 900)
 scaleObject('verydead3', 1, 1)
 addLuaSprite('verydead3', true)
setScrollFactor('verydead3', 1.1, 1.1)
setProperty('verydead3.alpha', 0)

makeLuaSprite('verydead4', 'ex/verydead', 2300, 900)
 scaleObject('verydead4', 1, 1)
 addLuaSprite('verydead4', true)
setScrollFactor('verydead4', 1.1, 1.1)
setProperty('verydead4.alpha', 0)


    makeAnimatedLuaSprite('bf_transform', 'ex/bf_transform', 1765, 726) -- -290
    scaleObject('bf_transform', 1.5, 1.5)
   addAnimationByPrefix('bf_transform','playanim','bf transition',24,false)
    addLuaSprite('bf_transform', false)
    setObjectOrder('bf_transform', 22)
    setProperty('bf_transform.alpha',0)

    setProperty('defaultCamZoom', 2.0)

    makeAnimatedLuaSprite('BOYFRIEND_DEAD', 'ex/BOYFRIEND_DEAD', 1440, 770) -- -290
    scaleObject('BOYFRIEND_DEAD', 1.05, 1.05)
   addAnimationByPrefix('BOYFRIEND_DEAD','Die','BF dies',24,false)
   addAnimationByPrefix('BOYFRIEND_DEAD','Confirm','BF DEAD confirm',24,false)
   addAnimationByPrefix('BOYFRIEND_DEAD','Loop','BF Dead Loop',24,true)
    addLuaSprite('BOYFRIEND_DEAD', false)
    setObjectOrder('BOYFRIEND_DEAD', 12)
    setProperty('BOYFRIEND_DEAD.alpha',0)

    setScrollFactor('BOYFRIEND_DEAD', 1.2, 1.2)
  setProperty('isCameraOnForcedPos', true)
 doTweenX('tween', 'camFollow',1900, .2, 'expoOut') -- 1900
  doTweenY('tweenY', 'camFollow',570, .2, 'expoOut') -- 570


    addLuaSprite('AppleJuice', true)
    addLuaSprite('flashblack', true);
 setProperty('timeBarBG.visible', false)
      setProperty('timeBar.visible', false)
      setProperty('timeTxt.visible', false)
    setProperty('camZoomOnBeat', false)

   

end
tweenSpeed = .1
function onSongStart()
    doTweenAlpha('yikes2', 'AppleJuice', 1, 1)
   doTweenAlpha('yikes', 'flashblack', 0, 2)
    setPropertyFromClass('ClientPrefs', 'comboOffset[0]', 100)
     -- setPropertyFromClass('ClientPrefs', 'comboOffset[1]', 100)
     setPropertyFromClass('ClientPrefs', 'comboOffset[3]', 300)
      setPropertyFromClass('ClientPrefs', 'comboOffset[2]', 200)
     setProperty('camHUD.alpha', 0)
end

function onTweenCompleted(tag)
    if tag == '2move4' then 
        setProperty('verydead4.x', -1600)  
        Tballs1 = getProperty('verydead1.x')
        Tballs2 = getProperty('verydead2.x')
        Tballs3 = getProperty('verydead3.x')
        Tballs4 = getProperty('verydead4.x')
  
  doTweenX('2move1start', 'verydead1', Tballs1 + 1300, tweenSpeed)
  doTweenX('2move2start', 'verydead2', Tballs2 + 1300, tweenSpeed)
  doTweenX('2move3', 'verydead3', Tballs3 + 1300, tweenSpeed)
  doTweenX('2move4done', 'verydead4', Tballs4 + 1300, tweenSpeed)
    end
    if tag == '2move3' then 
        setProperty('verydead3.x', -1600)  
        Tballs1 = getProperty('verydead1.x')
        Tballs2 = getProperty('verydead2.x')
        Tballs3 = getProperty('verydead3.x')
        Tballs4 = getProperty('verydead4.x')
  
  doTweenX('2move1start', 'verydead1', Tballs1 + 1300, tweenSpeed)
  doTweenX('2move2', 'verydead2', Tballs2 + 1300, tweenSpeed)
  doTweenX('2move3done', 'verydead3', Tballs3 + 1300, tweenSpeed)
  doTweenX('2move4done', 'verydead4', Tballs4 + 1300, tweenSpeed)
    end
    if tag == '2move2' then 
        setProperty('verydead2.x', -1600)  
        Tballs1 = getProperty('verydead1.x')
        Tballs2 = getProperty('verydead2.x')
        Tballs3 = getProperty('verydead3.x')
        Tballs4 = getProperty('verydead4.x')
  
  doTweenX('2move1', 'verydead1', Tballs1 + 1300, tweenSpeed)
  doTweenX('2move2done', 'verydead2', Tballs2 + 1300, tweenSpeed)
  doTweenX('2move3done', 'verydead3', Tballs3 + 1300, tweenSpeed)
  doTweenX('2move4done', 'verydead4', Tballs4 + 1300, tweenSpeed)
    end
    if tag == '2move1' then 
        setProperty('verydead1.x', -1600)  
        Tballs1 = getProperty('verydead1.x')
  Tballs2 = getProperty('verydead2.x')
  Tballs3 = getProperty('verydead3.x')
  Tballs4 = getProperty('verydead4.x')
  
  doTweenX('2move1done', 'verydead1', Tballs1 + 1300, tweenSpeed)
  doTweenX('2move2done', 'verydead2', Tballs2 + 1300, tweenSpeed)
  doTweenX('2move3done', 'verydead3', Tballs3 + 1300, tweenSpeed)
  doTweenX('2move4', 'verydead4', Tballs4 + 1300, tweenSpeed)
    end
    if tag == 'move7' then 
        setProperty('dead7.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1start', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2start', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3start', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4start', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5start', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8start', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move6' then 
        setProperty('dead6.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1start', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2start', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3start', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4start', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8start', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move5' then 
        setProperty('dead5.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1start', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2start', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3start', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5done', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8start', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move4' then 
        setProperty('dead4.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2start', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3start', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4done', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5done', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8start', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move1' then 
        setProperty('dead1.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1done', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3start', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4done', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5done', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8start', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move2' then 
        setProperty('dead2.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1done', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2done', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4done', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5done', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8start', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move3' then 
        setProperty('dead3.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1done', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2done', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3done', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4done', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5done', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move8' then 
        setProperty('dead8.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1done', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2done', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3done', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4done', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5done', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7done', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8done', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9', 'dead9', balls9 - 350, tweenSpeed)
    end
    if tag == 'move9' then 
        setProperty('dead9.x', 2400)
        local balls1 = getProperty('dead1.x')
        local balls2 = getProperty('dead2.x')
        local balls3 = getProperty('dead3.x')
        local balls4 = getProperty('dead4.x')
        local balls5 = getProperty('dead5.x')
        local balls6 = getProperty('dead6.x')
        local balls7 = getProperty('dead7.x')
        local balls8 = getProperty('dead8.x')
        local balls9 = getProperty('dead9.x')
        doTweenX('move1done', 'dead1', balls1 - 350, tweenSpeed)
        doTweenX('move2done', 'dead2', balls2 - 350, tweenSpeed)
        doTweenX('move3done', 'dead3', balls3 - 350, tweenSpeed)
        doTweenX('move4done', 'dead4', balls4 - 350, tweenSpeed)
        doTweenX('move5done', 'dead5', balls5 - 350, tweenSpeed)
        doTweenX('move6done', 'dead6', balls6 - 350, tweenSpeed)
        doTweenX('move7', 'dead7', balls7 - 350, tweenSpeed)
        doTweenX('move8done', 'dead8', balls8 - 350, tweenSpeed)
        doTweenX('move9done', 'dead9', balls9 - 350, tweenSpeed)
    end
end


function onCreatePost()
    --[[setProperty('bg.alpha', 0)
    setProperty('crowd.alpha', 0)
    setProperty('server.alpha', 0)
    setProperty('lightAbove.alpha', 0)
    setProperty('brightLightSmall.alpha', 0)
    setProperty('backDark.alpha', 0)
    setProperty('lights.alpha', 0)
    setProperty('orangeLight.alpha', 0)]]
end
function onStepHit()
   if curStep == 1 then 
working = false
    --setProperty('cameraSpeed', 30)
   -- doTweenX('tween', 'camFollow',850, .1, 'quadInOut')

  triggerEvent('RalZoom-setZoom', 'game', '1/15/quadInOut')
 setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',1200, 13.5, 'quadInOut')
    doTweenY('tweenY', 'camFollow',770, 13.5, 'quadInOut')
   end
   if curStep == 20 then 
    doTweenAlpha('ummm3', 'AppleJuice', 0,1)
   end
   if curStep == 30 then 
      doTweenAlpha('title1AltA', 'title1Alt', .5,.5)
    addAnimationByPrefix('title1','ggds','play',24,false)
    setProperty('title1.alpha', 1)

   end
   if curStep == 64 then 
    addAnimationByPrefix('title2','ggdsw','play',24,false)
    setProperty('title2.alpha', 1)
end
 if curStep == 118 then 
    doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar - 90, 1, 'QuadIn')
			doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar + 90, 1, 'QuadIn')
            doTweenAlpha('ummm1', 'title1', 0,1)
            doTweenAlpha('ummm2', 'title2', 0,1)
             doTweenAlpha('title1AltA', 'title1Alt', 0,.5)
 end
 if curStep == 128 then 
    setProperty('isCameraOnForcedPos', false)
    doTweenAlpha('huddy','camHUD', 1,1)
    triggerEvent('RalZoom-setZoom', 'game', '1.2/2/expoOut')
 end
 if curStep == 230 then 
    setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',850, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '1.4/3/quadInOut')
 end
 if curStep == 248 then 
    setProperty('OH.alpha', 1)
 end
 if curStep == 250 then 
    setProperty('OH.alpha', 0)
    setProperty('YEAH.alpha', 1)
 end
 if curStep == 252 then 
    setProperty('OH.alpha', 0)
    setProperty('YEAH.alpha', 0)
    setProperty('HA.alpha', 1)
 end
 if curStep == 254 then 
    setProperty('OH.alpha', 0)
    setProperty('YEAH.alpha', 0)
    setProperty('HA.alpha', 0)
    setProperty('HAHA.alpha', 1)
 end
 if curStep == 256 then 
    doTweenAlpha('textgone', 'HAHA', 0, 1)
    doTweenX('tween', 'camFollow',1170, 2, 'quadInOut')
    doTweenY('tweenY', 'camFollow',770, 2, 'quadInOut')
    triggerEvent('RalZoom-setZoom', 'game', '.95/2/quadInOut')
 end
 if curStep == 358 then 
    setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',850, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '1.4/3/quadInOut')
 end
 if curStep == 376 then 
    setProperty('OH.alpha', 1)
 end
 if curStep == 378 then 
    setProperty('OH.alpha', 0)
    setProperty('YEAH.alpha', 1)
 end
 if curStep == 380 then 
    setProperty('OH.alpha', 0)
    setProperty('YEAH.alpha', 0)
    setProperty('HA.alpha', 1)
 end
 if curStep == 382 then 
    setProperty('OH.alpha', 0)
    setProperty('YEAH.alpha', 0)
    setProperty('HA.alpha', 0)
    setProperty('HAHA.alpha', 1)
 end
 if curStep == 384 then 
    doTweenAlpha('textgone', 'HAHA', 0, 1)
    setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',1000, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
    doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar - 20, 1, 'QuadIn')
    doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar + 20, 1, 'QuadIn')
    triggerEvent('RalZoom-setZoom', 'game', '1.2/4/quadInOut')
    setObjectCamera('UpperBar(With HUD)', 'camHUD')
 setObjectCamera('LowerBar(With HUD)', 'camHUD')

 end
 if curStep == 400 then 
    setProperty('isCameraOnForcedPos', false)
 end
 if curStep == 512 then 
    setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',1170, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '.95/2/quadInOut')
 end
 if curStep == 566 then 
    triggerEvent('RalZoom-setZoom', 'game', '1.4/.1/expoOut')
    setProperty('cameraSpeed', 1000)
    doTweenX('tween', 'camFollow',950, .01, 'expoOut')
 end
 if curStep == 567 then 
    setProperty('cameraSpeed', 4)
    doTweenX('tween', 'camFollow',800, .5, 'expoOut')
 end
 if curStep == 570 then 
    setProperty('cameraSpeed', 1000)
    doTweenX('tween', 'camFollow',1450, .01, 'expoOut')
 end
 if curStep == 571 then 
    setProperty('cameraSpeed', 4)
    doTweenX('tween', 'camFollow',1600, .5, 'expoOut')
 end
 if curStep == 573 then 
    setProperty('cameraSpeed', 1000)
    doTweenX('tween', 'camFollow',950, .01, 'expoOut')
 end
 if curStep == 574 then 
    setProperty('cameraSpeed', 2.3)
    doTweenX('tween', 'camFollow',800, 1, 'expoOut')
 end
 if curStep == 576 then 
    setProperty('cameraSpeed', 1)
    doTweenX('tween', 'camFollow',1170, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '.95/2/quadInOut')
 end
 if curStep == 624 then 
    doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar - 90, 1, 'QuadIn')
    doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar + 90, 1, 'QuadIn')
    --triggerEvent('RalZoom-setZoom', 'game', '.95/2/quadInOut')
 end
 if curStep == 640 then 
    doTweenX('tween', 'camFollow',1000, 2.1, 'quadInOut')
    doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
    triggerEvent('RalZoom-setZoom', 'game', '1.1/3/quadInOut')
 end
 if curStep == 660 then 
    setProperty('isCameraOnForcedPos', false)
 end
 if curStep == 742 then 
    setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',850, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '1.4/3/quadInOut')
 end
 if curStep == 760 then 
   setProperty('OH.alpha', 1)
 end
 if curStep == 762 then 
   setProperty('OH.alpha', 0)
   setProperty('yeahanim.alpha', 1)
 end
 if curStep == 764 then 
   setProperty('OH.alpha', 0)
   setProperty('yeahanim.alpha', 0)
   setProperty('HA.alpha', 1)
 end
 if curStep == 766 then 
   setProperty('OH.alpha', 0)
   setProperty('yeahanim.alpha', 0)
   setProperty('HA.alpha', 0)
    setProperty('HAHA.alpha', 1)
 end
 if curStep == 768 then 
   doTweenAlpha('textgone', 'HAHA', 0, 1)
   setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',1170, 1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '1.1/1/quadInOut')
 end
 if curStep == 782 then 
    triggerEvent('RalZoom-setZoom', 'game', '.95/1/expoOut')
 end
 if curStep == 896 then
setProperty('isCameraOnForcedPos', true)
    doTweenX('tween', 'camFollow',850, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '1.4/3/quadInOut')
     doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar - 20, 1, 'QuadIn')
    doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar + 20, 1, 'QuadIn')
 end

 if curStep == 960 then 
   setProperty('cameraSpeed', 1)
    doTweenX('tween', 'camFollow',1170, 2.1, 'quadInOut')
     doTweenY('tweenY', 'camFollow',770, 2.1, 'quadInOut')
     triggerEvent('RalZoom-setZoom', 'game', '.95/2/quadInOut')
 end
    if curStep == 1001 then 
      setProperty('isCameraOnForcedPos', true)
   doTweenX('tween', 'camFollow',1540, 2, 'expoInOut')
    doTweenY('tweenY', 'camFollow',870, 2, 'expoInOut')
    setProperty('cameraSpeed', .9)
    end
    if curStep ==1018 then --16
        triggerEvent('RalZoom-setZoom', 'game', '10/1.00/expoInOut')
        end

    
        if curStep == 1024 then 
         playAnim('BOYFRIEND_DEAD', 'Loop', false)
            setProperty('BOYFRIEND_DEAD.alpha',1)
        setProperty('boyfriend.alpha', 1)
        playAnim('BOYFRIEND_DEAD', 'Die', true)
        setProperty('bg.alpha', 0)
        setProperty('crowd.alpha', 0)
        setProperty('server.alpha', 0)
        setProperty('lightAbove.alpha', 0)
        setProperty('brightLightSmall.alpha', 0)
        setProperty('backDark.alpha', 0)
        setProperty('lights.alpha', 0)
        setProperty('orangeLight.alpha', 0)
       setProperty('GlitchCart.alpha', 0)
       setProperty('bottomFloor.alpha', 0)
        setProperty('deadclose.alpha', 1)
        setProperty('deadclose2.alpha', 1)
        
        end
        if curStep == 1025 then 
            triggerEvent('RalZoom-setZoom', 'game', '.8/3.4/expoOut')  
            end
            if curStep == 1128 then 
                doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar - 90, 1, 'QuadIn')
			doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar + 90, 1, 'QuadIn')
            end
            if curStep == 1136 then 
               --setProperty('camGame.alpha', 0)
                   setProperty('flashblack.alpha',1)
               setProperty('boyfriend.alpha', 0)
               setProperty('dad.alpha', 0)
            end
            if curStep == 1152 then 
               setSpriteShader('dad', 'glitch')
                   setProperty('flashblack.alpha',0)
                setProperty('glitch.alpha', 1)
               setProperty('bf_transform.alpha',1)
setProperty('boyfriend.alpha', 0)
setProperty('dad.alpha', 1)
               playAnim('bf_transform', 'playanim', true)
               --setProperty('camGame.alpha', 1)
               cameraFlash('camOther', 'FFFFFF', 1)
               triggerEvent('RalZoom-setZoom', 'game', '.7/.01/expoOut')  
                setProperty('deadclose.alpha', 0)
        setProperty('deadclose2.alpha', 0)
        setProperty('verydead1.alpha', 1)
        setProperty('verydead2.alpha', 1)
        setProperty('verydead3.alpha', 1)
        setProperty('verydead4.alpha', 1)
                balls1 = getProperty('dead1.x')
                balls2 = getProperty('dead2.x')
                balls3 = getProperty('dead3.x')
                balls4 = getProperty('dead4.x')
                balls5 = getProperty('dead5.x')
                balls6 = getProperty('dead6.x')
                balls7 = getProperty('dead7.x')
                balls8 = getProperty('dead8.x')
                balls9 = getProperty('dead9.x')
            
              doTweenX('move1start', 'dead1', balls1 - 350, tweenSpeed)
              doTweenX('move2start', 'dead2', balls2 - 350, tweenSpeed)
              doTweenX('move3start', 'dead3', balls3 - 350, tweenSpeed)
              doTweenX('move4start', 'dead4', balls4 - 350, tweenSpeed)
              doTweenX('move5start', 'dead5', balls5 - 350, tweenSpeed)
              doTweenX('move6start', 'dead6', balls6 - 350, tweenSpeed)
              doTweenX('move7', 'dead7', balls7 - 350, tweenSpeed)
              doTweenX('move8start', 'dead8', balls8 - 350, tweenSpeed)
              doTweenX('move9start', 'dead9', balls9 - 350, tweenSpeed)
              runTimer('reset1', 2.01)
            
            
              Tballs1 = getProperty('verydead1.x')
              Tballs2 = getProperty('verydead2.x')
              Tballs3 = getProperty('verydead3.x')
              Tballs4 = getProperty('verydead4.x')
              
              doTweenX('2move1start', 'verydead1', Tballs1 + 1300, tweenSpeed)
              doTweenX('2move2start', 'verydead2', Tballs2 + 1300, tweenSpeed)
              doTweenX('2move3start', 'verydead3', Tballs3 + 1300, tweenSpeed)
              doTweenX('2move4', 'verydead4', Tballs4 + 1300, tweenSpeed)
            end
            if curStep == 1294 then 
               triggerEvent('RalZoom-setZoom', 'game', '.6/1/expoOut')  
            end
             if curStep == 1408 then 
               triggerEvent('RalZoom-setZoom', 'game', '2.1/4/quadInOut')  
            end
            if curStep == 1416 then 
               doTweenAlpha('staticup', 'Static', 1, 1)
               doTweenAlpha('dhdhd', 'camHUD', 0, 1)
            end
            
end

function onUpdatePost()
    
    if getProperty('BOYFRIEND_DEAD.animation.curAnim.finished') then 
        --triggerEvent('Change Character', 0, 'bfntff')
        playAnim('BOYFRIEND_DEAD', 'Loop', false)
    end
    if getProperty('bf_transform.animation.curAnim.finished') then 
        --triggerEvent('Change Character', 0, 'bfntff')
        setProperty('boyfriend.alpha', 1)
        setProperty('bf_transform.alpha', 0)
    end
end

function onUpdate(elapsed)

   


    setProperty('camZooming', true)
    
    end