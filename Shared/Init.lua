COMMAND_CACHE = {}

function AddCommand(command, eventName)
    if command == nil then
        return false
    end
    COMMAND_CACHE[command] = {
        eventName = eventName
    }
    return true
end

Package.Export("AddCommand", AddCommand)