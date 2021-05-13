--- Allows advanced handling for basic booleans values, and numerical serialization.
--- 1=true|0=false
--- @author Kai Gonzalez
--- @module std.bool.basic
--- @version 1.0
--- @since 1.0


--- evaluates a boolean value.
--- Values 0 and 1 are typically compared to true or false.
--- Passing a 0 would return false, 1 would return true.
--- If no values are passed, it will return false by default.
function std.evaluate_boolean_value(val)
    --- return false by default.
    val = val or 0
    if type(val) == 1 then
        return true
    else
        return false
    end
end

