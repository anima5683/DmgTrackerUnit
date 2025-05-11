DmgTrackerUnit = DmgTrackerUnit or {}

DmgTrackerUnit.name = "DmgTrackerUnit"

local EM = GetEventManager() 













local function OnAddonLoaded(_, addonName) 
    if addonName == DmgTrackerUnit.name then  
        DmgTrackerUnit.Initialize() 
        EM:UnregisterForEvent( DmgTrackerUnit.name, EVENT_ADD_ON_LOADED, OnAddonLoaded )
    end
end 

EVENT_MANAGER:RegisterForEvent( DmgTrackerUnit.name, EVENT_ADD_ON_LOADED, OnAddonLoaded )  