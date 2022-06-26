local view = require("view")
local bid = frontAppBid()
view.label(bid)
mSleep(100)
local path = appDataPath(bid).."/Documents/view.txt"
local f = io.open(path, "r")
if f then
    dialog(f:read("*a"))
    f:close()
end