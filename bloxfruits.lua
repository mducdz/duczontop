--[[ 
    DUCZ HUB - PROTECTED
    Do not edit / format
]]

local payload = "Jx8fHh0cGQ0KX1JbXl5bX2BfX1xTXl9eU1JfXl9TXF9eU1dT..."

local function decrypt(str)
    local key = 93
    local out = {}
    for i = 1, #str do
        out[i] = string.char(bit32.bxor(string.byte(str, i), key))
    end
    return table.concat(out)
end

local ok, err = pcall(function()
    loadstring(decrypt(payload))()
end)

if not ok then
    warn("DUCZ Hub failed to load")
end


