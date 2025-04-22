function onCreate()
makeLuaSprite('pendejo',nil,-700,-600)
makeGraphic('pendejo', 1,1,'ffffff')
scaleObject('pendejo',2450,1792)
addLuaSprite('pendejo')
end

function onCreatePost()
setObjectCamera('comboGroup', 'camGame')
setProperty('showCombo',true)

makeLuaSprite('bbar',nil,0,-160)
makeGraphic('bbar', 180, 900, '000000')
addLuaSprite('bbar', false)
setObjectCamera('bbar', 'camOther')

makeLuaSprite('bbar2',nil,1100,-180)
makeGraphic('bbar2', 180, 900, '000000')
addLuaSprite('bbar2', false)
setObjectCamera('bbar2', 'camOther')

makeAnimatedLuaSprite('cheider','lineas',180,0)
addAnimationByPrefix('cheider','idle cheiderpower','idle',24,true)
addLuaSprite('cheider',true)
setProperty('cheider.blend',9)
setProperty('cheider.alpha',0.1)
scaleObject('cheider',1.32,1.9)
setObjectCamera('cheider','HUD')

end
function onUpdatePost()
if not middlescroll then
for i = 0,3 do
setPropertyFromGroup('strumLineNotes',i,'x',100*i+200)
setPropertyFromGroup('strumLineNotes',i,'scale.x',0.6)
setPropertyFromGroup('strumLineNotes',i,'scale.y',0.6)
setPropertyFromGroup('grpNoteSplashes',i,'scale.x',0.7)
setPropertyFromGroup('grpNoteSplashes',i,'scale.y',0.7)
end
for i = 4,7 do
setPropertyFromGroup('strumLineNotes',i,'x',100*i+250)
setPropertyFromGroup('strumLineNotes',i,'scale.x',0.6)
setPropertyFromGroup('strumLineNotes',i,'scale.y',0.6)
end
end
end

function goodNoteHit(_,d,_,s)
if not s and mustHitSection then
doTweenAngle('CamTween1', 'camGame', d == 3 and 1 or d == 0 and -1.1 or 0,0.3)
end
end

function onMoveCamera(c)
if c == 'boyfriend' then return end
cancelTween('CamTween1')
doTweenAngle('pee nis', 'camGame', 0, 0.15)
end

count = {'countdownReady','countdownSet','countdownGo'}
function onCountdownTick(c)
doTweenY('tweening'..c,count[c],getProperty(count[c]..'.y')+70,(crochet/1000)*0.75,'cubeIn')
end