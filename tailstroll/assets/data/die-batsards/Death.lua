local allowCountdown = false
function onCreate()
	makeChart();
end

function onStartCountdown()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf3dedShoot');
	characterPlayAnim('gf', 'shoot1-loop', true);
	return Function_Continue;
end