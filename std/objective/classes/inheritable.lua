require 'std.io.stdio' ---gets stdio functions, also includes the STD Table.

std.classes = {}

std.__std = {}

std.__std.attrib = {
    essential=true
}

--- allows a table to inherit certain objects from another table.
--- tables are built in methods in lua.
--- takes this concept, and uses it to inherit data from previous / other datatables.
--- Using this in cooperation with Declare() can cause issues with the naming convention.
---
--- 2:22PM: Fixed Issues with naming conventions by adding an inherited table inside of the original table.
---
---
--- @language Lua
--- @author Kai Gonzalez
--- @module std.objective.classes.inheritable
function std.inherit(table_frm, __contents_original)
        return {inherited=table_frm, __content=__contents_original}
end

--- realistically inherits all objects from one table to another. This fixes many other issues with the original
--- std.inherit, but does not create caches for objects.
--- this function is also not going to be actively worked on, and fixed. Any bugs will wait.
function std.real_inherit(table_from)
    local table_from = table_from or {}
    setmetatable(table_from, self)
    self.__index = self
    return table_from
end


--- declares a table as a class.
--- returns a basic table with certain features, that allow for serialization.
--- @version 1.0
--- @author Kai Gonzalez
--- @see std.objective.classes.inheritable
function std.declare(name)
    return {name=name}
end
--- search a table and returns 1 if found the given specification.
--- takes any input, returns a number.
--- to check numbers, see std.bool.basic
--- @see std.bool.basic
function std.search_table_if(__table_iter, _search)
    for i, v in pairs(__table_iter) do
        if i == _search then
            return 1
        end
    end
    return 0
end
--- Assuming the table was made from the STD inherit / declare functions, or at least has
--- STD Data Stored onto it, call the attributes.
function std:table_attrib(table_t)
    return table_t.__std.attrib
end

--- uses the same creation method as the std.real_inherit.
function std.new_std_class (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end
