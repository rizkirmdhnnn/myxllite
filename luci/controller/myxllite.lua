module("luci.controller.myxllite", package.seeall)
function index()
entry({"admin","status","myxllite"}, template("myxllite"), _("My XL Lite"), 4).leaf=true
end