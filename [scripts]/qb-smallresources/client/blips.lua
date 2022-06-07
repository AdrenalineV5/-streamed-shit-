  local blips = {
   {title="Arcade", colour=2, id=76, x = -1272.37, y = -304.28, z = 37.04}, --car boosting vector3(589.19, 2758.76, 41.88) vector3(-1272.37, -304.28, 37.04)
  {title="Mini Golf", colour=8, id=358, x = -1733.42, y = -1135.61, z = 13.07}, --vector3(-1733.42, -1135.61, 13.07)
  {title="Billiards", colour=3, id=58, x = -1596.84, y = -988.24, z = 13.08}, --vector3(-1596.84, -988.24, 13.08)
}

--vector4(3311.22, 5176.35, 19.61, 229.62)

Citizen.CreateThread(function()
      for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      --SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)