function onCreate()
	makeLuaSprite('Smok2', 'Smok2', 0, 0);
	setLuaSpriteScrollFactor('Smok2', 0.5, 0.5);
    scaleObject('Smok2', 5, 5)	
	addLuaSprite('Smok2', true);	
	setObjectCamera('Smok2', 'hud');

	makeLuaSprite('HSback', 'HSback', -400, -100);
	setLuaSpriteScrollFactor('HSback', 0.5, 0.5);
	addLuaSprite('HSback', false);

	makeAnimatedLuaSprite('smoke', 'smoke', -240, 450);
    addAnimationByPrefix('smoke', 'smoke', 'smoke', 24, true);  
    objectPlayAnimation('smoke', 'smoke', true)
    scaleObject('smoke', 1.1, 1.1)
    addLuaSprite('smoke', false);

	makeLuaSprite('HSfront', 'HSfront', -650, 600);
	setLuaSpriteScrollFactor('HSfront', 0.9, 0.9);
	scaleObject('HSfront', 1.1, 1.1)
	addLuaSprite('HSfront', false);

	makeAnimatedLuaSprite('smoke2', 'smoke2', -240, 650);
    addAnimationByPrefix('smoke2', 'smoke2', 'smoke2', 24, true);  
    objectPlayAnimation('smoke2', 'smoke2', true)
    scaleObject('smoke2', 1.3, 1.3)
    addLuaSprite('smoke2', true);
end


