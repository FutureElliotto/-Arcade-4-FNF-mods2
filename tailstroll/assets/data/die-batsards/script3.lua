function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Crosshair' then
		objectPlayAnimation('elcolas', 'elpepe', true)	

				local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'epico';
		elseif noteData == 1 then
			animToPlay = 'epico';
		elseif noteData == 2 then
			animToPlay = 'epico';
		elseif noteData == 3 then
			animToPlay = 'epico';
		end
		characterPlayAnim('gf', animToPlay, true);
		setProperty('gf.specialAnim', true);		runTimer('PAPS', 1, 0.5)
   end	     
end 	

-- Hit
function crossHit(id)
	if noteType == 'Crosshair' then
		objectPlayAnimation('elcolas', 'elpepe', true)	

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'epico';
		elseif noteData == 1 then
			animToPlay = 'epico';
		elseif noteData == 2 then
			animToPlay = 'epico';
		elseif noteData == 3 then
			animToPlay = 'epico';
		end
		characterPlayAnim('gf', animToPlay, true);
		setProperty('gf.specialAnim', true);
		runTimer('PAPS', 1, 0.5)
   end	     
end 	

-- Miss
function crossMiss(id)
	if noteType == 'Crosshair' then
		objectPlayAnimation('elcolas', 'elpepe', true)	

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'epico';
		elseif noteData == 1 then
			animToPlay = 'epico';
		elseif noteData == 2 then
			animToPlay = 'epico';
		elseif noteData == 3 then
			animToPlay = 'epico';
		end
		characterPlayAnim('gf', animToPlay, true);
		setProperty('gf.specialAnim', true);
		runTimer('PAPS', 1, 0.5)
   end	     
end 	

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'PAPS' then	
      objectPlayAnimation('elcolas', 'elcolas', true)
	  characterPlayAnim('gf', 'idle', true);
   end	     
end 	