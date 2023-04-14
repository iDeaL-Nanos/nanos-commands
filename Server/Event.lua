Chat.Subscribe("PlayerSubmit", function(message, player)
    if message:sub(1, 1) == "/" then
        local args = split_str(message, " ")
        local command = args[1]:sub(2)
        table.remove(args, 1)
        if COMMAND_CACHE[command] == nil then
            Chat.SendMessage(player, "Command "..command.." Unknown !")
            return false
        end
        Events.Call(COMMAND_CACHE[command].eventName, player, table.unpack(args))
        return false
    end
end)