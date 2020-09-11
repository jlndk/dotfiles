do
    function conky_round(arg)
        local n = conky_parse(arg)
        return math.floor(tonumber(n) + .5)
    end

    function conky_wifi_icon(arg)
        local arg = conky_parse(arg)

        if arg == "unk"
        then
            return "   "
        end

        local n = tonumber(arg)

        if (n > 75)
        then
            -- 4
            return ""
        elseif (n > 50)
        then
            -- 3
            return ""
        elseif (n > 25)
        then
            -- 2
            return ""
        else
            -- 1
            return ""
        end
    end

    function conky_volume_icon(arg)
        local n = tonumber(conky_parse(arg))

        if (n > 66)
        then
            return ""
        elseif (n > 33)
        then
            return ""
        else
            return ""
        end
    end

    function conky_volume_status()
        local muteStatus = conky_parse("${exec amixer -D pulse get Master | grep '%' | grep -oE '[^ ]+$' | grep 'off'}")

        -- if speaker is muted
        if(muteStatus ~= "") then
            return conky_parse("${color #fff}${font FontAwesome:size=15}${font}$color   Muted")
        end


        local volume = conky_parse("${exec amixer -D pulse get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1}")
        
        if(volume == "")
        then 
            return ""
        end
        
        local icon = conky_volume_icon(volume)

        return conky_parse("${color #fff}${font FontAwesome:size=15}" .. icon .. "${font}$color  " .. volume  .. "%")
    end

    function conky_internet_status()
        local lanAddress = conky_parse("${addr enx0023561c5684}")
        local wifiAddress = conky_parse("${addr wlp3s0}")

        if(lanAddress ~= "No Address") then
            local icon = "${color #fff}${font FontAwesome:size=15}${font}$color"
            local ip = "${addr enx0023561c5684}"
            return conky_parse(icon.."  "..ip)
        elseif (wifiAddress ~= "No Address") then
            local icon = conky_wifi_icon("${wireless_link_qual_perc wlp3s0}")
            local info = "$wireless_essid (${addr wlp3s0})"
            return conky_parse("${color #fff}${font JlndkWifi:size=12}"..icon.."${font}$color "..info)
        else
            return "No Connection"
        end
    end

    function conky_battery_status()

        local isCharging = conky_parse("${battery BAT1}")
        
        local icon
        
        if(isCharging:find("^charging") ~= nil) then
            icon = conky_parse("${color #fff}${font FontAwesome:size=15}${font}$color  ") 
        else
            icon = conky_parse("${color #fff}${font FontAwesome:size=15}${font}$color") 
        end

        local batteryLevel = conky_parse("${battery_percent BAT1}%")

        local batteryTime = conky_parse("${battery_time BAT1}")
        
        if(batteryTime ~= "") then
            batteryTime = "(" .. batteryTime .. ")"
        end

        return icon .. " " .. batteryLevel .. " " .. batteryTime
    end
end
