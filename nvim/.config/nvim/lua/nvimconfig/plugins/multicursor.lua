return {
    "jake-stewart/multicursor.nvim",
    -- branch = "1.0",
    config = function()
        local mc = require("multicursor-nvim")
        mc.setup()

        mc.addKeymapLayer(function(layerSet)
            layerSet("n", "<esc>", function()
                if not mc.cursorsEnabled() then
                    mc.enableCursors()
                else
                    mc.clearCursors()
                end
            end)
        end)
    end
}
