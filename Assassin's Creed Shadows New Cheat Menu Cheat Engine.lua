-- Assassin's Creed: Shadows Cheat Menu

-- Player Status
local playerStatus = {
    health = 100,
    godmode = true,
    invisibility = false,
    noReload = true,
    lockConsumables = true,
    eagleVision = true,
    ignoreFallDamage = true
  }
  
  -- Inventory
  local inventory = {
    syncCreedPoints = true,
    moneyPouches = 1000,
    boosts = true
  }
  
  -- Teleport & Coordinates
  local teleport = {
    waypointTeleport = true,
    freeRoam = true,
    camDistance = 100,
    speed = 2,
    iconTeleport = true,
    saveRestoreCoordinates = true
  }
  
  -- Miscellaneous
  local misc = {
    speedGame = true,
    weather = "Clear",
    freezeTimers = true
  }
  
  -- Gear List
  local gearList = {
    unlockAnyGear = true
  }
  
  -- Challenges
  local challenges = {
    completeChallenges = true
  }
  
  -- Assassin Rank
  local assassinRank = {
    info = true
  }
  
  -- Main Script
  local function main()
    -- Kill anti-debug procedure
    killThread(getThreadIdFromPid(getProcessId("acu.exe")))
  
    -- Player Status
    writeInteger("acu.exe"+0x00123456, playerStatus.health)
    writeBoolean("acu.exe"+0x00123457, playerStatus.godmode)
    writeBoolean("acu.exe"+0x00123458, playerStatus.invisibility)
    writeBoolean("acu.exe"+0x00123459, playerStatus.noReload)
    writeBoolean("acu.exe"+0x0012345A, playerStatus.lockConsumables)
    writeBoolean("acu.exe"+0x0012345B, playerStatus.eagleVision)
    writeBoolean("acu.exe"+0x0012345C, playerStatus.ignoreFallDamage)
  
    -- Inventory
    writeInteger("acu.exe"+0x00123460, inventory.syncCreedPoints)
    writeInteger("acu.exe"+0x00123461, inventory.moneyPouches)
    writeBoolean("acu.exe"+0x00123462, inventory.boosts)
  
    -- Teleport & Coordinates
    writeBoolean("acu.exe"+0x00123470, teleport.waypointTeleport)
    writeBoolean("acu.exe"+0x00123471, teleport.freeRoam)
    writeFloat("acu.exe"+0x00123472, teleport.camDistance)
    writeFloat("acu.exe"+0x00123473, teleport.speed)
    writeBoolean("acu.exe"+0x00123474, teleport.iconTeleport)
    writeBoolean("acu.exe"+0x00123475, teleport.saveRestoreCoordinates)
  
    -- Miscellaneous
    writeBoolean("acu.exe"+0x00123480, misc.speedGame)
    writeString("acu.exe"+0x00123481, misc.weather)
    writeBoolean("acu.exe"+0x00123482, misc.freezeTimers)
  
    -- Gear List
    writeBoolean("acu.exe"+0x00123490, gearList.unlockAnyGear)
  
    -- Challenges
    writeBoolean("acu.exe"+0x001234A0, challenges.completeChallenges)
  
    -- Assassin Rank
    writeBoolean("acu.exe"+0x001234B0, assassinRank.info)
  end
  
  -- Run the main script
  main()