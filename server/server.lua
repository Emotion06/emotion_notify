-------------------------------------------------------------------------
-----------------------   Scheduled Restart    --------------------------
-------------------------------------------------------------------------

if Config.scheduledRestart then

  RegisterNetEvent('txAdmin:events:scheduledRestart')
  AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    local minutes = tonumber(eventData.secondsRemaining / 60)
    TriggerClientEvent('emotion_notify:scheduledRestart', -1, minutes)
  end)

end

-------------------------------------------------------------------------
--------------------------   Announcement    ----------------------------
-------------------------------------------------------------------------

if Config.announcement then

  RegisterNetEvent('txAdmin:events:announcement')
  AddEventHandler('txAdmin:events:announcement', function(eventData)
    TriggerClientEvent('emotion_notify:announcement', -1, eventData.message)
  end)

end

-------------------------------------------------------------------------
-------------------------------   End    --------------------------------
-------------------------------------------------------------------------

--This handles the version check
local versioner = exports['bcc-versioner'].initiate()
local repo = 'https://github.com/Emotion06/emotion_notify'
versioner.checkRelease(GetCurrentResourceName(), repo)

print("^6𝙀𝙈𝙊𝙏𝙄𝙊𝙉_𝙉𝙊𝙏𝙄𝙁𝙔 ^5is Started! ^6🌌 𝙀𝙢𝙤𝙩𝙞𝙤𝙣 𝙎𝙘𝙧𝙞𝙥𝙩𝙨 ^0- ^5https://discord.gg/h4nhwVQCAQ ^0")