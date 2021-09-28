ESX        = nil
local mask2 = false

RegisterNetEvent("metti:mask", function (xD, xD2)


  RequestAnimDict("mp_masks@standard_car@ds@")

    while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do
      Wait(0)
    end  


    TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", -4.0, -4.0, 800, 0, 0.0)
    Wait(800)
    
    if mask2 then
        mask2 = not mask2
        ESX.ShowNotification('put mask')
        SetPedComponentVariation(PlayerPedId(), 1, -1, 1, 0)
    else
        mask2 = not mask2
        ESX.ShowNotification('remove mask')
        SetPedComponentVariation(PlayerPedId(), 1, xD, xD2, 0) 
    end
end)
-- inspired https://github.com/DeltaDevelopments/Dlt-Item_Mask 
