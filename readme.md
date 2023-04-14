# Simple Commands System

This package allows you to add custom commands into Nanos Word. 

## How to install

- Download `nanos-commands` and add it into your `Server/Packages/` folder of your Nanos World Server
- Load `nanos-commands` into your project : 
    - Add it to the `packages_requirements` section of your project Package.toml file. 

        ```
            packages_requirements = [
                "nanos-commands",
            ]
        ```
    - Add it to the list of packages into `/NanosWorldServer/Config.toml`

        ```
            packages = [
                "nanos-commands",
            ]
        ```

## Functions 

### 🔵🟠 **`AddCommand`**

Register a new chat command

```lua
AddCommand("chat_cmd_name","event_to_call")
```

## Exemple

Register a "ouch" commands that execute the associated event when called.
```lua
AddCommand("ouch", "command:ouch")

Events.Subscribe("command:ouch", function(player, value)
    if player:GetControlledCharacter() == nil or value == nil then return end
    player:GetControlledCharacter():ApplyDamage(tonumber(value))
    return true
end)
```