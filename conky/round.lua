do
    function conky_round(arg)
        local n = conky_parse(arg)
        return math.floor(tonumber(n) + .5)
    end
end
