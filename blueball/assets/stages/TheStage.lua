function onCreate()
    makeLuaSprite('backDark', 'erect/backDark', 1500)
    scaleObject('backDark', 1, 1)
    addLuaSprite('backDark', 'backDark')

    makeAnimatedLuaSprite('crowd', 'erect/crowd', 1200, 370)
    addAnimationByPrefix('crowd','Dance','Symbol 2 instance',13,true)
    scaleObject('crowd', 1.4, 1.4)
    setScrollFactor('crowd', 1.3, 1.1)
    addLuaSprite('crowd', 'crowd')
    setSpriteShader('crowd', 'glitch')

    makeLuaSprite('bg', 'erect/bg')
    scaleObject('bg', 1, 1)
    addLuaSprite('bg', 'bg')


    um = 1.8
    makeAnimatedLuaSprite('bottomFloor', 'erect/bottomFloor', -560, 760)
    addAnimationByPrefix('bottomFloor','Dance','Idle',13,true)
    scaleObject('bottomFloor', 1.8, 1.8)
   -- setScrollFactor('bottomFloor', 1.3, 1.3)
    addLuaSprite('bottomFloor', false)
    --setSpriteShader('crowd', 'glitch')


    makeLuaSprite('server', 'erect/server', 200, 450)
    scaleObject('server', 1, 1)
    addLuaSprite('server', 'server')

    makeLuaSprite('lightAbove', 'erect/lightAbove', 1500)
    scaleObject('lightAbove', 1, 1)
    addLuaSprite('lightAbove', true)
    setScrollFactor('lightAbove', 1.2, .9)
    setBlendMode('lightAbove', 'subtract')
    setProperty('lightAbove.alpha', 0)

    makeLuaSprite('brightLightSmall', 'erect/brightLightSmall', 1550, 100)
    scaleObject('brightLightSmall', 1, 1)
    addLuaSprite('brightLightSmall', true)
    setScrollFactor('brightLightSmall', 1.2, .9)
    setBlendMode('brightLightSmall', 'subtract')
    setProperty('brightLightSmall.alpha', 0)

    
    makeLuaSprite('lighting', 'erect/lighting', 460, 130)
    scaleObject('lighting', 1, 1)
    addLuaSprite('lighting', true)
    setScrollFactor('lighting', 1.2, .9)
    setProperty('lighting.alpha', .3)
    setBlendMode('lighting', 'add')
    doTweenAlpha('lightingA1', 'lighting', .2, 0.02)

    makeLuaSprite('lights', 'erect/lights', -100, -100)
    scaleObject('lights', 1, 1)
    addLuaSprite('lights', true)
    setScrollFactor('lights', 1.2, .9)
    setProperty('lights.flipX', true)
    setProperty('lights.angle', 20)

 
    --setProperty('lights.angle', 20)

    makeLuaSprite('orangeLight', 'erect/orangeLight', -800, 100)
    scaleObject('orangeLight', 3, 1)
    addLuaSprite('orangeLight', true)
    --setBlendMode('orangeLight', 'add')
    setScrollFactor('orangeLight', 1.2, .9)
    setBlendMode('orangeLight', 'subtract')

    makeLuaSprite('orangeLight2', 'erect/orangeLight', -800, 100)
    scaleObject('orangeLight2', 3, 1)
    addLuaSprite('orangeLight2', true)
    --setBlendMode('orangeLight', 'add')
    setScrollFactor('orangeLight2', 1.2, .9)
    setBlendMode('orangeLight2', 'subtract')

    makeAnimatedLuaSprite('GlitchCart', 'erect/GlitchCart', 400, 260)
    addAnimationByPrefix('GlitchCart','Dance','GlitchOnCart',16,true)
    scaleObject('GlitchCart', 4.2, 4.2)
    setScrollFactor('GlitchCart', 1.1, 1.1)
    addLuaSprite('GlitchCart', true)
   -- setSpriteShader('GlitchCart', 'glitch')

 
end

function onCreatePost()
   --setSpriteShader('dad', 'effect weird')
end

function onTweenCompleted(tag)
    if tag == 'lightingA1' then
        doTweenAlpha('lightingA2', 'lighting', .32, 0.02)
    end
    if tag == 'lightingA2' then
        doTweenAlpha('lightingA1', 'lighting', .2, 0.02)
    end
    if tag == 'lightingA3' then
        doTweenAlpha('lightingA4', 'lighting', .1, 0.02)
    end
    if tag == 'lightingA4' then
        doTweenAlpha('lightingA3', 'lighting', .21, 0.02)
    end
    if tag == 'lightingA5' then
        doTweenAlpha('lightingA6', 'lighting', .3, 0.02)
    end
    if tag == 'lightingA6' then
        doTweenAlpha('lightingA5', 'lighting', .19, 0.02)
    end
    if tag == 'lightingA7' then
        doTweenAlpha('lightingA8', 'lighting', .38, 0.02)
    end
    if tag == 'lightingA8' then
        doTweenAlpha('lightingA1', 'lighting', .23, 0.02)
    end
    if tag == 'lightingA9' then
        doTweenAlpha('lightingA10', 'lighting', .3, 0.02)
    end
    if tag == 'lightingA10' then
        doTweenAlpha('lightingA9', 'lighting', .2, 0.02)
    end
    if tag == 'lightingA11' then
        doTweenAlpha('lightingA12', 'lighting', .4, 0.02)
    end
    if tag == 'lightingA12' then
        doTweenAlpha('lightingA11', 'lighting', .3, 0.02)
    end 
    if tag == 'lightingA13' then
        doTweenAlpha('lightingA14', 'lighting', .5, 0.02)
    end 
    if tag == 'lightingA14' then
        doTweenAlpha('lightingA13', 'lighting', .4, 0.02)
    end
    if tag == 'lightingA15' then
        doTweenAlpha('lightingA16', 'lighting', .3, 0.02)
    end
end

function cancelAllLightingTweensAndHide()
    -- Cancel all lighting tweens
    cancelTween('lightingA1')
    cancelTween('lightingA2')
    cancelTween('lightingA3')
    cancelTween('lightingA4')
    cancelTween('lightingA5')
    cancelTween('lightingA6')
    cancelTween('lightingA7')
    cancelTween('lightingA8')
    cancelTween('lightingA9')
    cancelTween('lightingA10')
    cancelTween('lightingA11')
    cancelTween('lightingA12')
    cancelTween('lightingA13')
    cancelTween('lightingA14')
    cancelTween('lightingA15')
    cancelTween('lightingA16')

    -- Set all lighting alphas to 0
    setProperty('lighting.alpha', 0)
end

function onStepHit()
   if curStep == 1024 then 
      cancelAllLightingTweensAndHide()
   end
end