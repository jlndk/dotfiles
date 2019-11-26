do
    function conky_round(arg)
        local n = conky_parse(arg)
        return math.floor(tonumber(n) + .5)
    end

    function conky_wifi_icon(arg)
        local n = tonumber(conky_parse(arg))

        if (n > 75)
        then
            return ""
        elseif (n > 50)
        then
            return ""
        elseif (n > 25)
        then
            return ""
        else
            return ""
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
end
