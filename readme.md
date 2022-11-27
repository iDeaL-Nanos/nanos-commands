# Simple Commands System

## How to install
Add the package "nanos-commands" to packages_requirements of your project in Package.toml. 
```
    ...
    packages_requirements = [
        "nanos-commands",
    ]
    ...
```
Add the next ligne in your Index.lua of your Server dir
```
Package.RequirePackage("nanos-commands")
```

## Exemple

Setup new command :
```lua
AddCommand("ouch", "command:ouch") -- AddCommand("your_chat_command", "event_call_when_command_executed")
```

Add event of the new command :
```lua
Events.Subscribe("command:ouch", function(player, value)
    local character = player:GetControlledCharacter()

    character:ApplyDamage(tonumber(value))
    return true
end)
```