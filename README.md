# LuaU Synapse X
Lua Type Synapse X, Blue &amp; Old UI
## Features like Synapse X
This gives you access to features like:
```lua
syn.protect_gui(GUI <ScreenGui (Instance)>) -- Example: syn.protect_gui(Instance.new("ScreenGui"))
↑ Protects the selected GUI in the first argument. This works for instances like: Part, BasePart, BillboardGui and more.
syn.unprotect_gui(GUI <ScreenGui (Instance)>) -- Example: syn.unprotect_gui(Instance.new("ScreenGui"))
↑ Unprotects the selected GUI in the first argument. This works for instances like: Part, BasePart, BillboardGui and more.
syn.queue_on_teleport(<string> code) -- Example: syn.queue_on_teleport([[print('This script runs on teleport!')]])
↑ Runs code after you have teleported.
syn.is_beta(<void) -- Example: syn.is_beta()
↑ If the synapse x is in BETA, it will return true, otherwise, will return false.
syn.request(<table> arguments) -- Example: syn.request({Url = "https://x.synapse.to/", Method = "GET"})
↑ Returns website's code/Fires webhooks.
syn.create_secure_function(<string> code) -- Example: syn.create_secure_function([[print("Anticheats do not see this!")]]) ←-- BETA, MIGHT NOT WORK!
[CUSTOM FEATURES]
syn.create_instance(<string> instance, <boolean> protectinstance, <object/service> parentobject, <table> instancesettings) -- Example: syn.create_instance("Part",true,game:GetService("Workspace"),{Name="PART NAME",Transparency=0.5})
↑ Creates an instance, and if the "protectinstance" argument is enabled, then it will automically protect the instance, and then returns it. Still will return the instance when protectinstance is disabled.
syn.secure_teleport(<Vector3> teleport_position)
↑ Seats your character into a random selected seat, and then teleports the seat, after you have teleported the seat will return back.
syn.hook_namecall(<function> func)
--[[Example:
local meta = getrawmetatable(game)
local old = meta.__namecall
setreadonly(meta, false)
syn.hook_namecall(function(self, ...)
local method = getnamecallmethod()
print(self..":"..method) -- Example: self:GetFullName() ← workspace.SELF
return old(self, ...)
end)
--]]
↑ Hooks the game's metatable namecall. newcclosure does not require to be called. Game's metatable must be not readonly by setreadonly(metatable, false)
syn.hook_index(<function> func)
↑ Hooks the game's metatable newindex (better than index) newcclosure does not require to be called.
syn.better_decompile(<object> Script)
↑ (!SCRIPT CANNOT BE A SERVERSCRIPT OTHERWISE IT WILL RETURN NOTHING!) Decompiles the given script.
Example of the decompiled script:

-- Decompiled using Synapse X LuaU Decompiler.
local I_SYN_1 = print
local I_SYN_2 = ("Hello World!")
I_SYN_1(I_SYN_2)

Alright, enough of the documentation. Enjoy!
```
