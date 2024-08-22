local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false
MarkedMin = 25000
MarkedMax = 50000

RegisterServerEvent("Butter-bobcatheist:successthermite") 
AddEventHandler("Butter-bobcatheist:successthermite", function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['thermite'], 'remove')
    player.Functions.RemoveItem("thermite", 1)
end)

RegisterServerEvent('Butter-bobcatheist:server:cooldown')
AddEventHandler('Butter-bobcatheist:server:cooldown', function()
    Cooldown = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            Cooldown = false
        end
    end
end)

QBCore.Functions.CreateCallback("Butter-bobcatheist:Cooldown", function(source, cb)
    if Cooldown then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('Butter-bobcatheist:server:getCops', function(source, cb)
    local amount = 0
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.type == 'leo' then
            amount = amount + 1
        end
    end
    cb(amount)
end)

RegisterServerEvent('Butter-bobcatheist:server:ThermitePtfx', function(coords)
    TriggerClientEvent('Butter-bobcatheist:client:ThermitePtfx', -1, coords)
end)

RegisterServerEvent("Butter-bobcatheist:success") 
AddEventHandler("Butter-bobcatheist:success", function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bcssecuritycard'], 'remove')
    player.Functions.RemoveItem("bcssecuritycard", 1)
end)

RegisterNetEvent('Butter-bobcatheist:server:CartItem', function(type)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local bags = math.random(1, 3)
    local info = {
        worth = math.random(MarkedMin, MarkedMax)
    }
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], "add")
    player.Functions.AddItem('markedbills', 5, false, info)
end)

RegisterNetEvent('Butter-bobcatheist:server:LockerItem', function(type)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local bags = math.random(3, 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['WEAPON_UZI'], "add")
    player.Functions.AddItem('WEAPON_UZI', bags, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['WEAPON_DE'], "add")
    player.Functions.AddItem('WEAPON_DE', 3, false)
end)

RegisterNetEvent('sync', function(status)
    if status == true then
        return
    elseif status == false then
        TriggerClientEvent('bomb-anim')
    end
end)

RegisterNetEvent("Butter-bobcat:server:sync3")
AddEventHandler("Butter-bobcat:server:sync3", function()
    TriggerClientEvent("Butter-bobcat:client:sync3", -1)
end)

RegisterNetEvent("Butter-bobcat:server:closedoorbob")
AddEventHandler("Butter-bobcat:server:closedoorbob", function()
    TriggerClientEvent("Butter-bobcat:client:closedoor", -1)
end)
RegisterNetEvent('Butter-bobcat:server:OpenDoor', function(door)
    local DoorLock = exports.ox_doorlock:getDoorFromName(door)
    TriggerClientEvent('ox_doorlock:setState', -1, DoorLock.id, 0, source)
    print(DoorLock.id)
end)

RegisterNetEvent('Butter-bobcat:server:CloseDoor', function(door)
    local DoorLock = exports.ox_doorlock:getDoorFromName(door)
    TriggerClientEvent('ox_doorlock:setState', -1, DoorLock.id, 1, source)
    print(DoorLock.id)
end)