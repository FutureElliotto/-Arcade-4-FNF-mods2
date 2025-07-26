function onCreatePost()
makeLuaSprite("aspectLeft", "", -260, 0)
makeGraphic("aspectLeft", 450, 720, "0xFF000000")
setObjectCamera("aspectLeft", 'other')
addLuaSprite("aspectLeft", true)

makeLuaSprite("aspectRight", "", 1100, 0)
makeGraphic("aspectRight", 450, 720, "0xFF000000")
setObjectCamera("aspectRight", 'other')
addLuaSprite("aspectRight", true)
--fuck u aspects
makeLuaSprite('buttonA', 'Menus/pause/buttons/but_A', 910, 570);
    addLuaSprite('buttonA', true);
    scaleObject('buttonA', 0.8, 0.8, false)
    setObjectCamera('buttonA', 'other')
    setProperty('buttonA.visible', false)
    setProperty('buttonA.alpha', 0.7)
    
makeLuaSprite('buttonUp', 'Menus/pause/buttons/but_U', 200, 450);
    addLuaSprite('buttonUp', true);
    scaleObject('buttonUp', 0.8, 0.8, false)
    setObjectCamera('buttonUp', 'other')
    setProperty('buttonUp.visible', false)
    setProperty('buttonUp.alpha', 0.7)
    makeLuaSprite('buttonDown', 'Menus/pause/buttons/but_D', 200, 570);
    addLuaSprite('buttonDown', true);
    scaleObject('buttonDown', 0.8, 0.8, false)
    setObjectCamera('buttonDown', 'other')
    setProperty('buttonDown.visible', false)
    setProperty('buttonDown.alpha', 0.7)
    
setProperty('logoomf.x', 1005)
setProperty('time.x', getProperty('time.x') + 160)
setProperty('time2.x', getProperty('time2.x') + 170)

makeLuaSprite('infoBG', ' ', 190, 5)
    makeGraphic('infoBG', 200, 10, '000000')
    setObjectCamera('infoBG', 'other')
    setProperty('infoBG.alpha', 0.4)
    addLuaSprite('infoBG', false)

    makeLuaText("fps", "", -1, 190, 5)
    setTextSize("fps", 16)
    setTextColor("fps", 'ffffff')
    setTextFont("fps", "flashing.ttf")
    setObjectCamera("fps", 'other')
    setTextBorder("fps", 0, '000000')
    addLuaText("fps")

    makeLuaText("MemoryCounter", "", -1, 190, 20)
    setTextSize("MemoryCounter", 16)
    setTextColor("MemoryCounter", 'ffffff')
    setTextFont("MemoryCounter", "flashing.ttf")
    setObjectCamera("MemoryCounter", 'other')
    setTextBorder("MemoryCounter", 0, '000000')
    addLuaText("MemoryCounter")
    
    makeLuaText("customText", "Ported by: TheLagKing", -1, 190, 35)
    setTextSize("customText", 16)
    setTextColor("customText", 'ffffff')
    setTextFont("customText", "flashing.ttf")
    setObjectCamera("customText", 'other')
    setTextBorder("customText", 0, '000000')
    addLuaText("customText")
    
setProperty('timeTxt.x',80)
setObjectCamera('timeTxt','other')
end

        function onCountdownStarted()
            for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, "x", getPropertyFromGroup('strumLineNotes', i, "x") + 100)
    end
    for i = 4,7 do
        setPropertyFromGroup('strumLineNotes', i, "x", getPropertyFromGroup('strumLineNotes', i, "x") - 80)
   end
    if middlescroll == true then
        for i = 0, getProperty("strumLineNotes.length") - 1 do
            setPropertyFromGroup("strumLineNotes", i, "x", getPropertyFromGroup("strumLineNotes", i, "x") +7.5)
        end
    for i = 4, getProperty('strumLineNotes.members.length') do
    noteTweenX('middlescrollfix'..i..'',i,(getProperty('strumLineNotes.members['..i..'].x')+75),0.001)
        end
        end
    end

