local bopInterval = 2
function onCreatePost()

    
    
    makeLuaSprite('marca', 'credits/asbel', 0, 585)
    scaleObject('marca', 0.75 , 0.75)
    setObjectCamera('marca', 'camOther')
    addLuaSprite('marca', true)
    
    screenCenter('marca', 'x')
    setProperty("marca.x", getProperty("marca.width") * 10);
    
	
	setProperty('marca.alpha', 0.6)
	 
	
	setProperty('marca.flipX',true)
	
	
	    if downscroll then
  
    setProperty('marca.y', 10)
    
        setProperty("healthbarSP.x", getProperty("healthBar.x")+getMid('healthBar.width')-getMid('healthbarSP.width')+downscrollX)
        setProperty("healthbarSP.y", getProperty("healthBar.y")+getMid('healthBar.height')-getMid('healthbarSP.height')+downscrollY)
    else
        setProperty("healthbarSP.x", getProperty("healthBar.x")+getMid('healthBar.width')-getMid('healthbarSP.width')+upscrollX)
        setProperty("healthbarSP.y", getProperty("healthBar.y")+getMid('healthBar.height')-getMid('healthbarSP.height')+upscrollY)
    end
end

function onBeatHit()
	if curBeat % bopInterval == 0 then
	
	scaleObject('marca', 0.78, 0.78)
	doTweenX('iconauohsdohjas3', 'marca.scale', 0.75, crochet/1000, 'circOut')
	doTweenY('iconauohsdohjas4', 'marca.scale', 0.75, crochet/1000, 'circOut')
end
end

