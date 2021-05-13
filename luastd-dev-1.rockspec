package = "luastd"
version = "dev-1"
source = {
   url = "github.com/Kai-Builder/lustd"
}
description = {
   homepage = "home.kai-builder.ml",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      init = "init.lua"
   }
}
