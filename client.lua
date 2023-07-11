Citizen.CreateThread(function()
    for k,v in pairs(Config.commands) do
        registerChatCommand(v)
    end
end)

function registerChatCommand(v)
    RegisterCommand(v.command, function()
        TriggerEvent("chatMessage", v.author .. " ", v.color, v.message)
    end)
    TriggerEvent('chat:addSuggestion', '/' .. v.command, v.helpText)
end
