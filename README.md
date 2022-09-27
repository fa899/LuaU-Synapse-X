# LuaU Synapse X
Lua Type Synapse X, Blue &amp; Old UI
## Executable in every tab doesnt matter where it is
You can run these functions on ur own executors!
## More functions incoming
There will be WAY more functions that will come!
## Features like Synapse X
This gives you access to features like:
```lua
syn.protect_gui(GUI <ScreenGui (Instance)>) -- Example: syn.protect_gui(Instance.new("ScreenGui"))
↑ Protects the selected GUI in the first argument. This works for instances like: Part, BasePart, BillboardGui and more.
syn.unprotect_gui(GUI <ScreenGui (Instance)>) -- Example: syn.unprotect_gui(Instance.new("ScreenGui"))
↑ Unprotects the selected GUI in the first argument. This works for instances like: Part, BasePart, BillboardGui and more.
--- [CUSTOM FEATURE] {
syn.is_protected(obj <ScreenGui (Instance)>) -- Example: syn.is_protected(Instance.new("ScreenGui"))
if syn.protect_gui was called on the instance, then will return true. Otherwise if the object is not protected, then will return false.
↑
} ---------------
syn.queue_on_teleport(<string> code) -- Example: syn.queue_on_teleport([[print('This script runs on teleport!')]])
↑ Runs code after you have teleported.
syn.is_beta(<void>) -- Example: syn.is_beta()
↑ If the synapse x is in BETA, it will return true, otherwise, will return false.
syn.request(<table> arguments) -- Example: syn.request({Url = "https://x.synapse.to/", Method = "GET"})
↑ Returns website's code/Fires webhooks.
syn.create_secure_function(<string> code) -- Example: syn.create_secure_function([[print("Anticheats do not see this!")]]) ←-- BETA, MIGHT NOT WORK!
[CUSTOM FEATURES]
syn.create_instance(<string> instance, <boolean> protectinstance, <object/service> parentobject, <table> instancesettings)
--[[↑ Creates an instance, and if the "protectinstance" argument is enabled, then it will automically protect the instance, and then returns it. Still will return the instance when protectinstance is disabled.
Example:
local part = syn.create_instance("Part",true,game:GetService("Workspace"),{Name="PART NAME",Transparency=0.5})
part.Name = "yes this is a brick"
]]
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
syn.better_decompile(<object> Script) -- ALIASES: syn.decompile (same function to this), decompile (ONCE SYNAPSE FEATURES SCRIPT IS EXECUTED THIS WILL BE CHANGED SO IT ALWAYS WILL RUN syn.better_decompile !)
↑ (!SCRIPT CANNOT BE A SERVERSCRIPT OTHERWISE IT WILL RETURN NOTHING!) Decompiles the given script.
Example of the decompiled script:

-- Decompiled using Synapse X LuaU Decompiler.
local I_SYN_1 = print
I_SYN_3 = task
I_SYN_4 = I_SYN_3.wait
local I_SYN_2 = ("Hello World!")
local I_SYN_5 = 1
I_SYN_1(I_SYN_2) -- print("Hello World!")
I_SYN_4(I_SYN_5) -- task.wait(1)

syn.secure_teleport(<table> table, <string> type) -- FULLY REWRITTEN, MIGHT NOT WORK!
--[[ ↑ READ DOWN HERE:
This has LOTS OF METHODS to bypass the anticheat.
Most important part (table):
local arguments = {
TweenSpeed = 1, -- for the "tween" method, duh
TargetPosition = Vector3.new(25, 25, 25) -- position for the teleport where to teleport, duh
}
syn.secure_teleport(arguments, "rocket")
Now for the methods:
"tween" (straight goes for the target position)
"chair" (makes ur character sit down into a chair and teleports the seat then makes u no longer sit and chair goes back) -- FULLY SECURE!
"antilagback" (teleports u back a couple times) ONLY ANTICHEATS WITHOUT SetNetworkOwner(nil) which slows u down just like bedwars anticheat
Antilagback is detectable (gives you noclip), beaware!
"rocket" (makes your character fly up and then fly to the target position and then flies down)
"hoodmodded" (bypasses hoodmodded anticheat's antiteleport)
--]]

syn.toggle_client_anticheat() -- <void>
↑ Toggles clientsided anticheat which fires and runs remotes, and detects whenever there's a goofy anticheat script in ur character.

-- ↑ Default: FALSE
-- SET THIS TO TRUE IF YOU WANNA BYPASS ANTICHEATS!

Alright, enough of the documentation. Enjoy!
```
