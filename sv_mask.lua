local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterUsableItem("mask", function (source)
    TriggerClientEvent("metti:mask", source, 1, 0)
end)