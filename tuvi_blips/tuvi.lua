local tuvi_blips = {
    -- Näide {title="", colour=, id=, x=, y=, z=},

     {title="Kanepi Korjamine", colour=5, id=140, x = 2224.64, y = 5577.03, z = 53.85},
     {title="Kanepi Pakendamine", colour=5, id=140, x = 2329.12, y = 2571.868, z = 46.68},
	 {title="Pablo", colour=52, id=267, x = -1852.37, y = -2811.69, z = 3.47}
    }
      
Citizen.CreateThread(function()

    for _, info in pairs(tuvi_blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

-- pede
-- https://wiki.gtanet.work/index.php?title=Blips