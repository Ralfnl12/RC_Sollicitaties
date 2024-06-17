ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('savePolSolli')
AddEventHandler('savePolSolli', function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local firstname = data.fname
    local lastname = data.lname
    local field3 = data.field3
    local field4 = data.field4
    local field5 = data.field5
    local field6 = data.field6
    local field7 = data.field7
    local field8 = data.field8
    local field9 = data.field9

    MySQL.Async.execute('INSERT INTO polsolli (firstname, lastname, field3, field4, field5, field6, field7, field8, field9) VALUES (@firstname, @lastname, @field3, @field4, @field5, @field6, @field7, @field8, @field9)',
    {
        ['@firstname'] = firstname,
        ['@lastname'] = lastname,
        ['@field3'] = field3,
        ['@field4'] = field4,
        ['@field5'] = field5,
        ['@field6'] = field6,
        ['@field7'] = field7,
        ['@field8'] = field8,
        ['@field9'] = field9
    },
    function(rowsChanged)
        if rowsChanged > 0 then
            xPlayer.showNotification('Data saved successfully')
        else
            xPlayer.showNotification('An error occurred')
        end
    end)
end)