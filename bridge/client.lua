
function AlertPolice()
    if Config.Dispatch == 'ps' then
        exports['ps-dispatch']:SuspiciousActivity() -- \\ Update According To Your Event
    elseif Config.Dispatch == 'Custom' then
        -- \\ Put Your Custom Dispatch Event Here
    end
end
