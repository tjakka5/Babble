local Path = (...):gsub('%.init$', '')

local Components = {}

Components.link   = require(Path..".link")
Components.pause  = require(Path..".pause")
Components.print  = require(Path..".print")
Components.script = require(Path..".script")
Components.setter = require(Path..".setter")
Components.text   = require(Path..".text")

return Components