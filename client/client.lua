local VorpCore = {}

TriggerEvent("getCore", function(core)
    VorpCore = core
end)

-------------------------------------------------------------------------
-----------------------   Scheduled Restart    --------------------------
-------------------------------------------------------------------------

RegisterNetEvent('emotion_notify:scheduledRestart')
AddEventHandler('emotion_notify:scheduledRestart', function(minutes)

  local minutes = tostring(minutes)
  VorpCore.NotifySimpleTop(_U("scheduledRestartTitle"), _U("scheduledRestartMessage") .. minutes .. _U("scheduledRestartMessage2"), 10000)
  
end)

-------------------------------------------------------------------------
--------------------------   Announcement    ----------------------------
-------------------------------------------------------------------------

RegisterNetEvent('emotion_notify:announcement')
AddEventHandler('emotion_notify:announcement', function(announcementtext)

  VorpCore.NotifySimpleTop(_U("announcementTitle"), announcementtext, 10000)
  
end)

-------------------------------------------------------------------------
-------------------------------   End    --------------------------------
-------------------------------------------------------------------------