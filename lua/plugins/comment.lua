local M = {
    -- Commenter
    "numToStr/Comment.nvim",
    event = "BufRead",
    config = function(_, _) require("Comment").setup({}) end
}

return M
