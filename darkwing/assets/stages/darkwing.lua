function onCreate()
    makeLuaSprite('fg', 'stages/darkwing/ChairAndTable5', -20, 0)
    setObjectOrder('fg', 3)
    scaleObject('fg', 1, 1)
    addLuaSprite('fg', true)
    setScrollFactor('fg', 0.95, 1)

    makeLuaSprite('interior', 'stages/darkwing/Interior4', 0, 0)
    setObjectOrder('interior', 0)
    scaleObject('interior', 1, 1)
    addLuaSprite('interior', true)

    makeLuaSprite('house', 'stages/darkwing/HouseAndRoad3', 0, 0)
    setObjectOrder('house', 0)
    scaleObject('house', 1, 1)
    addLuaSprite('house', true)

    makeLuaSprite('ocean', 'stages/darkwing/Ocean2', 0, 0)
    setObjectOrder('ocean', 0)
    scaleObject('ocean', 1, 1)
    addLuaSprite('ocean', true)

    makeLuaSprite('sky', 'stages/darkwing/Sky1Backlayer', 0, 0)
    setObjectOrder('sky', 0)
    scaleObject('sky', 1, 1)
    addLuaSprite('sky', true)

    scaleObject('healthBar', 0.5, 0.5)





end