return {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.sonokai_transparent_background = "1"
        vim.g.sonokai_enable_italic = "1"
        vim.g.sonokai_style = "andromeda"

        -- Load colorscheme
        vim.cmd.colorscheme("sonokai")

        -- Toggle background transparency
        local bg_transparent = true

        local toggle_transparency = function()
            bg_transparent = not bg_transparent
            vim.g.sonokai_transparent_background = bg_transparent
            vim.cmd.colorscheme("sonokai")
        end

        vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
    end,
}
