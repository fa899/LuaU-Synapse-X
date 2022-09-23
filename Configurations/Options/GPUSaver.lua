local setfpscap = setfpscap or set_fps_cap or cap_fps or capfps or nil
local iswindowactive = iswindowactive or is_window_active
local runService = game:GetService("RunService")

for i,v in pairs(workspace:GetDescendants()) do
   if v.Name:lower("part") and not v.Name:lower():find("icle") then
      local Material = Instance.new("StringValue", v)
      Material.Name = "Synapse-Material"
      Material.Value = v.Material
   end
end

workspace.DescendantAdded:Connect(function(v)
   if v.Name:lower("part") and not v.Name:lower():find("icle") then
      local Material = Instance.new("StringValue", v)
      Material.Name = "Synapse-Material"
      Material.Value = v.Material
   end
end)

if setfpscap == nil then
   game.Players.LocalPlayer:Kick("\nYour exploit does not support setfpscap. I reccomend you KRNL (https://krnl.place) or Synapse X [PAID] (https://x.synapse.to)")
end

if getconnections == nil then
   game.Players.LocalPlayer:Kick("\nYour exploit does not support getconnections. I reccomend you KRNL (https://krnl.place) or Synapse X [PAID] (https://x.synapse.to)")
end

if iswindowactive == nil then
   game.Players.LocalPlayer:Kick("\nYour exploit does not support iswindowactive. I reccomend you KRNL (https://krnl.place) or Synapse X [PAID] (https://x.synapse.to)")
end

local GFX = false
local GPUSaver
  
local resume, stop = function()
   setfpscap(10)
   if GFX == false then
      for i,v in pairs(workspace:GetDescendants()) do
         if v.Name:lower("part") and not v.Name:lower():find("icle") then
            v.Material = v:FindFirstChild("Synapse-Material").Value
         end
      end
      workspace.DescendantAdded:Connect(function(v)
         if v.Name:lower("part") and not v.Name:lower():find("icle") then
            v.Material = v:FindFirstChild("Synapse-Material").Value
         end
      end)
   end
   RunService:Set3dRenderingEnabled(false)
end, function()
   setfpscap(999)
   if GFX == false then
      for i,v in pairs(workspace:GetDescendants()) do
         if v.Name:lower("part") and not v.Name:lower():find("icle") then
            v.Material = v:FindFirstChild("Synapse-Material").Value
         end
      end
      workspace.DescendantAdded:Connect(function(v)
         if v.Name:lower("part") and not v.Name:lower():find("icle") then
            v.Material = v:FindFirstChild("Synapse-Material").Value
         end
      end)
   end
   RunService:Set3dRenderingEnabled(true)
end

while wait() do
   if iswindowactive() == true then
      resume();
   elseif iswindowactive() == false then
      stop();
   end
end
