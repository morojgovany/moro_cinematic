Citizen.CreateThread(function()
    while true do
        Wait(1000)
        if IsPedOnMount(PlayerPedId()) and Citizen.InvokeNative(0xB676EFDA03DADA52, GetMount(PlayerPedId()), true) == PlayerPedId() then -- if ped driver of horse
            -- disable cinematic mode
            -- Citizen.InvokeNative(0x8910C24B7E0046EC)
            -- SetCinematicModeActive(false)
            if Citizen.InvokeNative(0x74F1D22EFA71FAB8) then -- Clean waypoint to let horse go where it wants 
                ClearGpsPlayerWaypoint()
                SetWaypointOff()
                SetGpsMultiRouteRender(false)
            end
        end
        -- vehicle drivers
        if IsPedInAnyVehicle(PlayerPedId(), false) and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then -- is the driver
            if Citizen.InvokeNative(0x74F1D22EFA71FAB8) then
                ClearGpsPlayerWaypoint()
                SetWaypointOff()
                SetGpsMultiRouteRender(false)
            end
        end
    end
end)
