local ffi = require("ffi")  -- Load FFI module (instance)

local user32 = ffi.load("user32")   -- Load User32 DLL handle

ffi.cdef([[
enum{
    MB_OK = 0x00000000L,
    MB_ICONINFORMATION = 0x00000040L
};

typedef void* HANDLE;
typedef HANDLE HWND;
typedef const char* LPCSTR;
typedef unsigned UINT;

int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
]]) -- Define C -> Lua interpretation

what = false

function onGameOver()

    return Function_Stop
end

dead = false
hahayoudie = false

frameBF = 0
frameGF = 0
frameDAD = 0
frameLose = 0
function onCustomSubstateUpdate(n,elapsed)
    if n == 'gamerrrr' then
        frameBF = frameBF + (elapsed*12)
        frameDAD = frameDAD + (elapsed*20)
        frameGF = frameGF + (elapsed*20)
        frameLose = frameLose + (elapsed*20)

        setProperty('boyfriend.animation.curAnim.curFrame',frameBF)
        setProperty('gf.animation.curAnim.curFrame',frameGF)
        setProperty('dad.animation.curAnim.curFrame',frameDAD)
        setProperty('loseSprite.animation.curAnim.curFrame',frameLose)
    end
end


function onUpdate(elapsed)
    if getHealth() <= 0.0001 and not dead then
        openCustomSubstate('gamerrrr',true)
        dead = true
    end

    setPropertyFromGroup('opponentStrums', 0, 'alpha', 0.05)
    setPropertyFromGroup('opponentStrums', 1, 'alpha', 0.05)
    setPropertyFromGroup('opponentStrums', 2, 'alpha', 0.05)
    setPropertyFromGroup('opponentStrums', 3, 'alpha', 0.05)
end

rset = false
function onCustomSubstateUpdatePost(n,elapsed)
    if n == 'gamerrrr' then
        if keyboardJustPressed('R') or keyboardJustPressed('ENTER') then
            restartSong(false)
            stopSound("staticsound")
            stop = true
            if not rset then
                rset = true

                setProperty('camFollowPos.x',getGraphicMidpointX('boyfriend') - 500)
                setProperty('camFollowPos.y',getGraphicMidpointY('boyfriend') - 100)

                doTweenAlpha('black','black',1,1)
            end
        end

        if keyboardJustPressed('ESCAPE') then
            exitSong(false)
        end
    end
end


function onStartCountdown()
  
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('showRating', false);
    setProperty('showComboNum', false);
    setProperty('dad.alpha', 0)

end


function onCreatePost()
    
    makeLuaText('WARNING', '', 5000, -2000, 600);
    setTextAlignment('WARNING', 'center');
    addLuaText('WARNING');
    setTextString('WARNING', 'DONT MISS DONT MISS DONT MISS DONT MISS DONT MISS DONT MISS DONT MISS DONT MISS DONT MISS');
    setTextSize('WARNING', 50);
    setTextColor("WARNING", "FFFFFF")
    setProperty('WARNING.alpha', 0)
    setObjectCamera("WARNING", 'camGame')

    if downscroll then
        setProperty('WARNING.y', 50)
    end

    makeAnimatedLuaSprite('noel', 'noel', 100, getRandomInt(200,400))
	addAnimationByPrefix('noel','noel','noel run',6)
    setScrollFactor("noel", 0, 0)
    scaleObject('noel', 2.5,2.5)
    addLuaSprite('noel', true);
	setProperty('noel.antialiasing',false) 
    setProperty('noel.alpha', 0)

    makeAnimatedLuaSprite('staticthing', 'static', -300, -150)
	addAnimationByPrefix('staticthing','static','static',12)
    setScrollFactor("staticthing", 0, 0)
	scaleObject('staticthing', 3.8, 3);
    addLuaSprite('staticthing', false);
	setProperty('staticthing.antialiasing',false) 
    setProperty('staticthing.alpha',0.2) 

    makeAnimatedLuaSprite('ohio', 'bludisfromohio', -100, -150)
	addAnimationByPrefix('ohio','grimace','grimace',6, true)
    setScrollFactor("ohio", 0, 0)
	scaleObject('ohio', 1.5, 1.5);
    addLuaSprite('ohio', false);
	setProperty('ohio.antialiasing',false) 
    setBlendMode("ohio", 'darken')
    screenCenter("ohio")
    setProperty('ohio.alpha', 0)
    
    initLuaShader("glitch");

    setSpriteShader('boyfriend', 'glitch')

    triggerEvent("Camera Follow Pos", 310, 300)
    
    setPropertyFromGroup('playerStrums', 0, 'x', 435)
    setPropertyFromGroup('playerStrums', 1, 'x', 535)
    setPropertyFromGroup('playerStrums', 2, 'x', 635)
    setPropertyFromGroup('playerStrums', 3, 'x', 735)
    setPropertyFromGroup('opponentStrums', 0, 'x', 435)
    setPropertyFromGroup('opponentStrums', 1, 'x', 535)
    setPropertyFromGroup('opponentStrums', 2, 'x', 635)
    setPropertyFromGroup('opponentStrums', 3, 'x', 735)


    makeLuaSprite('black', '', 0, 0)
    setScrollFactor('black', 0, 0)
    makeGraphic('black',200,200,'FFFFFF')
    scaleObject('black',2,2)
    addLuaSprite('black',false)
    screenCenter('black', 'xy')
    setProperty('black.alpha', 1)
    
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'FRIDAY NIGHT FUNKIN')
	setProperty('camGame.bgColor', getColorFromHex('000000'))

    if shadersEnabled then
    initLuaShader("vhs");
	makeLuaSprite("vhs");
	makeGraphic("vhs", screenWidth, screenHeight);
	setSpriteShader("vhs", "vhs");

	addHaxeLibrary("ShaderFilter", "openfl.filters");
	runHaxeCode([[
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject("vhs").shader)]);
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("vhs").shader)]);
    ]]);
    end

    setHealthBarColors("FF0000", "00FF00")

end


function onCustomSubstateCreatePost(n)
    if n == 'gamerrrr' then
        if not hahayoudie then
            playSound('explosion',1)
            setProperty('camHUD.alpha', 0)
            triggerEvent("Change Character", 'BF', 'death')
            playAnim('boyfriend','firstDeath')
            setProperty('camGame.bgColor', getColorFromHex('FF0000'))
            setProperty('boyfriend.x', getProperty('boyfriend.x') - 20)
            setProperty('boyfriend.y', getProperty('boyfriend.y') - 20)
            playSound('shot',1)
            playSound('static',0.3, 'staticsound')
            runTimer("flop", 3.6)



            hahayoudie = true
        end
    end
end

function onSoundFinished(t)
    if t == 'static' then
        playSound('static',0.3,'staticsound')
    end
end

gotnoelle = 0

function onBeatHit()

    easteregg1 = getRandomInt(1,10000)

    if easteregg1 == 1 and gotnoelle == 0 then
        gotnoelle = 1
        doTweenX("runnoelle", "noel", 1200, 3.5, "Linear")
        doTweenAlpha("hinoel", "noel", 1, 0.8, "cubeInOut")
        runTimer("noellebye", 2.5)
    end


    if curBeat == 358 then
        setProperty('ohio.alpha', 1)
    end

    if curBeat >= 64 and curBeat <= 99 or curBeat >= 104 and curBeat <= 128 or curBeat >= 160 and curBeat <= 192 or curBeat >= 256 and curBeat <= 320 or curBeat >= 328 and curBeat <= 421 then
        triggerEvent('Add Camera Zoom', '0.025', nil)
    end

    if curBeat == 356 then
        doTweenY("byehp", "healthBar", getProperty('healthBar.y') + 250, 0.6, "cubeIn")
        doTweenAlpha("byehpalpha", "healthBar", 0, 0.4, "Linear")

                doTweenY("scoreTxtbye", "scoreTxt", getProperty('scoreTxt.y') + 50, 0.4, "cubeIn")
        doTweenAlpha("scoreTxtbye2", "scoreTxt", 0, 0.2, "Linear")
    end


    if curBeat == 360 then

        setProperty('WARNING.alpha', 1)
        setProperty('healthBar.alpha',0)
        setProperty('scoreTxt.alpha',0)
        doTweenX("boing1", "WARNING", -1710, 1, "Linear")

    end



    if curBeat >= 360 then
        function noteMiss(membersIndex, noteData, noteType, isSustainNote)
            setProperty('health', 0.0001) 
        end
    end


end


function goodNoteHit(i,d,t,s)
    if t == '' then
        if curBeat <= 159 or curBeat >= 192 then
        triggerEvent('Screen Shake', nil, '0.05, 0.005')
        end
    end

end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'noellebye' then
        doTweenAlpha("hinoel", "noel", 0, 0.5, "cubeInOut")
    end 

    if tag == 'text' then
        
        doTweenAlpha("rip", "rip", 1, 10, "linear")
    end

    if tag == 'flop' then
        makeLuaSprite('black', '', 0, 0)
        setScrollFactor('black', 0, 0)
        makeGraphic('black',1500,800,'000000')
        addLuaSprite('black',true)
        screenCenter('black', 'xy')

        makeLuaText('rip', '', screenWidth, 0, 300);
        setTextAlignment('rip', 'center');
        addLuaText('rip');
        setTextString('rip', 'good ending');
        setTextSize('rip', 50);
        setTextColor("rip", "FFFFFF")
        setProperty('rip.alpha', 0)
        setObjectCamera("rip", 'camGame')

        runTimer("text", 5)

        playSound('flop',1)

    end
end


function onTweenCompleted(tag)
    if tag == 'boing1' then
        setProperty("WARNING.x", -2000)
        doTweenX("boing2", "WARNING", -1710, 1, "Linear")
    end

    if tag == 'boing2' then
        setProperty("WARNING.x", -2000)
        doTweenX("boing1", "WARNING", -1710, 1, "Linear")
    end
end