require("std.lib.std")
--- prints something
function std.printf(str)
    io.write(str)
end
--- get string
function std.getstr()
    local str = io.read()
    return str
end

