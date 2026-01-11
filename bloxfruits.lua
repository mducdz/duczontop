--// DUCZ HUB | MAX SECURITY OBFUSCATION

local function __chk()
    return typeof(game)=="Instance"
end
if not __chk() then return end

local function __dec(s,k)
    local r={}
    for i=1,#s do
        r[i]=string.char(bit32.bxor(string.byte(s,i),k))
    end
    return table.concat(r)
end

-- 🔐 ENCODED PAYLOAD (XOR 73)
local __PAYLOAD = "\24\41\41\44\43\44\57\57\44\56\13\8\12\5\5\31\44\59\44\60\59\56\13\28\13\13\45\44\44\43\58\59\44\43\56\59\44\43\13\13\31\44\59\44\60\59\56\13\28\13\13\45\44\44\43\58\59\44\43\56\59\44\43\13\13\31\44\59\44\60\59\56\13\28\13\13\45\44\44\43\58\59\44\43\56\59\44\43"

local src = __dec(__PAYLOAD,73)
local f = loadstring(src)
if not f then error("Security violation") end
f()
