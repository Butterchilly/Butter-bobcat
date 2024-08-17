Config = {}

Config.Cops = 6

Config.Door1 = 11
Config.Door2 = 12
Config.Door3 = 13

-- \\ Debug
Config.Debug = false
-- Thermite Minigame Settings
Config.ThermiteBlocks = 12
Config.ThermiteAttempts = 3
Config.ThermiteShow = 5
Config.ThermiteTime = 45

-- laptop mingame settings anything more than 6 blocks will look ugly
Config.LaptopTime = 20
Config.LaptopBlocks = 2
Config.LaptopRepeat = 1

Config.MarkedBagMin = 1
Config.MarkedBagMax = 3
Config.MarkedMin = 25000
Config.MarkedMax = 50000

Config.Time = 20 -- time in seconds for the bomb to explode 

Config.Explosion = {
    [1] = {
        x = 888.442,
        y = -2130.58,
        z =  31.23,
        h = 4.852,
        hit = false
    }   
}

Config.Trolleys = {
    [1] = {
        coords = vector3(886.438, -2127.916, 30.23), 
        h = 261.54,
        hit = false
    },
    [2] = {
        coords = vector3(889.233, -2121.588, 30.23), 
        h = 175.506,
        hit = false
    }
}

-- Guards 
Config['guards'] = {
    ['npcguards'] = {
        { coords = vector3(899.49, -2124.21, 31.23), heading = 81.91, model = 's_m_m_security_01'},
        { coords = vector3(896.17, -2119.17, 31.23), heading = 81.91, model = 's_m_m_security_01'},
        { coords = vector3(895.93, -2125.35, 31.23), heading = 81.91, model = 's_m_m_security_01'},
        { coords = vector3(898.33, -2135.93, 31.23), heading = 81.91, model = 's_m_m_security_01'},
        { coords = vector3(886.43, -2130.37, 31.23), heading = 81.91, model = 's_m_m_security_01'},
        { coords = vector3(890.63, -2130.68, 31.23), heading = 10.64, model = 's_m_m_security_01'},
        { coords = vector3(885.15, -2136.03, 31.23), heading = 346.05, model = 's_m_m_security_01'},
        { coords = vector3(877.64, -2132.43, 31.23), heading = 346.05, model = 's_m_m_security_01'},
        { coords = vector3(878.02, -2124.68, 31.23), heading = 275.60, model = 's_m_m_security_01'},
        { coords = vector3(874.86, -2114.0, 31.23), heading = 275.60, model = 's_m_m_security_01'},
        { coords = vector3(885.74, -2108.19, 31.23), heading = 275.60, model = 's_m_m_security_01'},
    },
}