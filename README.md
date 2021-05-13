# Lua-std
Basically a LuaRocks module that implements classes correctly.

Lua-Std gives you more flexibility over your tables in lua.

Features a bunch of brand-new helper functions including. . .

- Print Functions
- Class Functions
- Class Implementations
- Table Algorithms
- Boolean Evaluators
--------

## FAQ

### Why would you make a class library?
It isn't about the classes, it's about the portability
& availability of the classes. LuaStd gives access to
be able to build in certain parts of the tables, and 
gives them structure, without ruining the base tables themselves.
### There's so many Lua class libraries, what makes this one different?
This Class implementation features inheritance and declarations.
These core features allow for the library to serialize data
accordingly. Inheritance, instead of being overly complicated, 
intends to create a data bank, inside the original table,
where all the original table cache is stored.

```lua
--- table

local myclass = std.declare("MyClass")

local newclass = std.inherit(myclass)

```

^

v

```lua
myclass {
    [1] {
        name="MyClass"
    }
}

before:

newclass {
    ---nothing...
}

after:

newclass {
    inherited {
        [1] {
            name="MyClass"
        }
    }
}
```

## I Want to contribute my Lua code!
Send a Pull Request. Be sure to keep any contributions
non-bulky, easy to understand, and portable. Any Pull requests implementing
Windows API, OSX Swift, Or any other platform singular GUI toolkits /
libraries will be denied.