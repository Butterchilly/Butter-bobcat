exports.ox_target:addBoxZone({
	name = "bomb",
	coords = vec3(888.5, -2130.25, 31.6),
	size = vec3(0.9, 0.6, 0.6),
	rotation = 358.25,
    debug = Config.Debug,
    drawSprite = true,
    options = {
        {
            type = 'client',
            event = 'bomb-anim',
            icon = 'fas fa-bomb',
            label = 'Place Bomb',
            item = 'weapon_pipebomb',
        },
    },
})

exports.ox_target:addBoxZone({
	name = "search",
	coords = vec3(892.0, -2123.0, 32.0),
	size = vec3(1.1, 2.3, 3.4),
	rotation = 0.0,
    debug = Config.Debug,
    drawSprite = true,
    options = {
        {
            type = 'client',
            event = 'Butter-bobcatheist:client:locker',
            icon = 'fas fa-magnifying-glass',
            label = 'Search Armory...',
            
            canInteract = function()
                if locker then 
                    return true 
                else 
                    return false 
                end
            end,
        },
    },
})


exports.ox_target:addBoxZone({
	name = "rto",
	coords = vec3(909.7, -2114.5, 31.3),
	size = vec3(0.6, 1, 0.95),
	rotation = 0.0,
    debug = Config.Debug,
    drawSprite = true,
    options = {
        {
            type = 'client',
            event = 'Butter-bobcatheist:client:Hack',
            icon = 'fas fa-laptop',
            label = 'Hack Computer System',
            item = 'bcssecuritycard',
        },
    },
})

exports.ox_target:addBoxZone({
	name = "bobcatthermite2",
	coords = vec3(908.5, -2120.65, 31.45),
	size = vec3(0.20000000000001, 1.45, 2.35),
	rotation = 355.25,
    debug = Config.Debug,
    drawSprite = true,
    options = {
        { 
            type = 'client',
            event = 'Butter-bobcatheist:client:ThermitebobcatDoor2',
            icon = 'fas fa-bomb',
            label = 'Blow Door',
            item = 'thermite',
            distance = 1.5,
        }
    },
})

exports.ox_target:addBoxZone({
	name = "door1",
	coords = vec3(914.75, -2121.9, 31.4),
	size = vec3(0.4, 2.65, 2.4),
	rotation = 354.75,
    debug = Config.Debug,
    drawSprite = true,
    options = {
        {
            type = 'client',
            event = 'Butter-bobcatheist:client:ThermitebobcatDoor',
            icon = 'fas fa-bomb',
            label = 'Blow Door',
            item = 'thermite',
            distance = 2,
        },
        {
            type = 'client',
            event = 'Butter-bobcatheist:client:Lockdown',
            icon = 'fas fa-bomb',
            label = 'Lock Down',
            distance = 2,
            groups = 'police'
        }
    }
})
