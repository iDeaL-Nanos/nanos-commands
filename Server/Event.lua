Chat.Subscribe("PlayerSubmit", function(text, sender)
    if text:sub(1, 1) == "/" then
        local args = split_str(text, " ")
        local command = args[1]:sub(2)
        
        table.remove(args, 1)
        if COMMAND_CACHE[command] == nil then
            Server.SendChatMessage(sender, "Command "..command.." Unknown !")
            return false
        end
        Events.Call(COMMAND_CACHE[command].eventName, sender, table.unpack(args))
        return false
    end
end)