COMMAND_CACH = {}

function AddCommand(command, eventName)
    if command == nil then
        return false
    end
    COMMAND_CACH[command] = {
        eventName = eventName
    }
    return true
end