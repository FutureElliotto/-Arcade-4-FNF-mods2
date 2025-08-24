function onUpdate()
    if mustHitSection == true then
        if curStep >= 1919 then
        health = getProperty('health')
        if getProperty('health') > 0.1 then
            setProperty('health', health- 0.00);
       end
    end
end end