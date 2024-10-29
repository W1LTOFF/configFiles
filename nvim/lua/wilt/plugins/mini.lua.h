return {
    'echasnovski/mini.nvim',
    dependencies = {
        'romgrk/barbar.nvim',
    },
    version = '*',
    config = function()
        vim.opt.sessionoptions:append 'globals'
        require 'mini.sessions'.setup {
            hooks = {
                pre = {
                    write = function() vim.api.nvim_exec_autocmds('User', { pattern = 'SessionSavePre' }) end,
                },
            },
        }
    end
}
