toolbar = {}
local tb = toolbar
icpath = "icons/white/ic_"
function toolbar.load()
	tools = {}
	options = {}
	tools.pencil = gooi.newButton():setIcon(icpath.."pencil.png")
	:onRelease(function(self) tool = tools.pencil end)
	tools.eraser= gooi.newButton():setIcon(icpath.."eraser.png")
	:onRelease(function() tool = tools.eraser end)
	tools.eyedropper = gooi.newButton():setIcon(icpath.."eyedropper.png")
	:onRelease(function() tool = tools.eyedropper end)
	tools.fill = gooi.newButton():setIcon(icpath.."fill.png")
	:onRelease(function() tool = tools.fill end)
	tools.pan = gooi.newButton():setIcon(icpath.."cursor_pointer.png")
	:onRelease(function() tool = tools.pan end)
	options.grid = gooi.newButton():setIcon(icpath.."grid.png")
	
	toolbar.layout = gooi.newPanel(0, dp(46), dp(46), dp(46*6), "grid 6x1")
	tb.layout:add(tools.pencil, "1,1")
	tb.layout:add(tools.eraser, "2,1")
	tb.layout:add(tools.eyedropper, "3,1")
	tb.layout:add(tools.fill, "4,1")
	tb.layout:add(tools.pan, "5,1")
	tb.layout:add(options.grid, "6,1")
end