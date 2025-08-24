local angleshit = 0;
local anglevar = 0;
function onUpdate()
    if curStep >= 641 then
        if curBeat % 0 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*0)
        setProperty('camGame.angle',angleshit*0)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.000, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*0, crochet*0.000, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.000, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*0, crochet*0.000, 'linear')
    end
end

