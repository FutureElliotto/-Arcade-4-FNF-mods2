function onBeatHit()
	if curBeat == 33 then
		noteTweenAlpha('regularStrum1', 0, 0, 1, linear)
		noteTweenAlpha('regularStrum2', 1, 0, 1, linear)
		noteTweenAlpha('regularStrum3', 2, 0, 1, linear)
		noteTweenAlpha('regularStrum4', 3, 0, 1, linear)

		for i = 0, 7 do
        		noteTweenX('balls'..i, i, (i < 4 and getProperty('opponentStrums.members['..i..'].x')+640 or getProperty('playerStrums.members['..(i-4)..'].x')-630),3, 'backInOut')
			doTweenX('move', 'luaScoreTxt2', 290, 3, 'backInOut')

		end
	end
end

