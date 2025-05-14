local videoCache = {}
local videoSprites = {}

function onCreate()
    setProperty('skipCountdown', true)

    addHaxeLibrary('VideoHandler', 'vlc')
    addHaxeLibrary('Event', 'openfl.events')
    
    cacheVideos()
end
function onStepHit()
if curStep > 4021 then
setProperty('videotag.alpha',0)
end
     if curStep == 3482 then
makeVideoSprite('videotag', 'cutscene', 220, 120, 'camHUD', 1)
scaleObject('videotag',1.52, 1.5)

                
                setProperty('videotag.alpha', 1) 
                setObjectOrder('videotag', 2)
       
                end
end
function makeVideoSprite(tag, videoPath, x, y, camera, hasVolume)
    runHaxeCode([[
        var video = new VideoHandler();
        video.playVideo(Paths.video("]] .. videoPath .. [["), ]] .. (hasVolume and '1' or '0') .. [[);
        video.visible = false;
        setVar("]] .. tag .. [[hasVolume", ]] .. (hasVolume and '1' or '0') .. [[);
        video.finishCallback = function() {
            game.remove(game.getLuaObject("]] .. tag .. [[")); 
            game.callOnLuas("onVideoFinished", ["]] .. tag .. [["]);
            return;
        };
        FlxG.stage.removeEventListener("enterFrame", video.update);
        setVar("]] .. tag .. [[", video);
    ]])
    makeLuaSprite(tag, nil, x, y)
    setObjectCamera(tag, camera)
    addLuaSprite(tag, false)
    table.insert(videoSprites, tag)
end

function cacheVideos()
    if #videoCache == 0 then

    else
        for i = 1, #videoCache do
            local tag = videoCache[i] .. 'c'
            runHaxeCode([[
                var video = new VideoHandler();
                video.playVideo(Paths.video("]] .. videoCache[i] .. [["), 0);
                video.finishVideo();
                setVar("]] .. tag .. [[", video);
            ]])
        end
    end
end

function onUpdatePost()
    for _, tag in pairs(videoSprites) do
        runHaxeCode([[
            var video = getVar("]] .. tag .. [[");
            if (video != null) {
                var luaSprite = game.getLuaObject("]] .. tag .. [[");
                if (luaSprite != null) {
                    luaSprite.loadGraphic(video.bitmapData);
                    if (getVar("]] .. tag .. [[hasVolume")) {
                        video.volume = 1;
                    }
                }
            }
        ]])
    end
end

function onPause()
    for _, tag in pairs(videoSprites) do
        runHaxeCode([[
            var video = getVar("]] .. tag .. [[");
            if (video != null) {
                video.pause();
            }
        ]])
    end
end

function onResume()
    for _, tag in pairs(videoSprites) do
        runHaxeCode([[
            var video = getVar("]] .. tag .. [[");
            if (video != null) {
                video.resume();
            }
        ]])
    end
end