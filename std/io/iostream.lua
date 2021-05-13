require 'std.lib.std'

function std.basic_stream()
    local cl = { __private_cache={}}
    return cl
end

function std.write(__stream, _value)
    table.insert(__stream.__private_cache, _value)
    io.write(tostring(_value))
end

function std.push_to(s, v)
    table.insert(s.__private_cache, v)
end