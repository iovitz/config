return {
    'nvimdev/dashboard-nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'hyper',
            config = {
                header = {[[]], [[.-./`)     ,-----.    ,---.  ,---.  ,---.,---------.  ____..--' ]],
                          [[\ .-.')  .'  .-,  '.  |   /  |   |  \   |\          \|        | ]],
                          [[/ `-' \ / ,-.|  \ _ \ |  |   |  .'   ,_ | `--.  ,---'|   .-'  ' ]],
                          [[ `-'`"`;  \  '_ /  | :|  | _ |  |,-./  )|    |   \   |.-'.'   / ]],
                          [[ .---. |  _`,/ \ _/  ||  _( )_  |\  '_ '`)   :_ _:      /   _/  ]],
                          [[ |   | : (  '\_/ \   ;\ (_ o._) / > (_)  )   (_I_)    .'._( )_  ]],
                          [[ |   |  \ `"/  \  ) /  \ (_,_) / (  .  .-'  (_(=)_) .'  (_'o._) ]],
                          [[ |   |   '. \_/``".'    \     /   `-'`-'|    (_I_)  |    (_,_)| ]],
                          [[ '---'     '-----'       `---`      '---'    '---'  |_________| ]], [[]]},
                week_header = {
                    enable = false
                },
                package = {
                    enable = false
                },
                footer = {[[]], [[I won't run cause I'm reticent]]},
                shortcut = {{
                    desc = '󰊳 Update',
                    group = '@property',
                    action = 'Lazy update',
                    key = 'u'
                }, {
                    icon = ' ',
                    icon_hl = '@variable',
                    desc = 'Files',
                    group = 'Label',
                    action = 'Telescope find_files',
                    key = 'f'
                }, {
                    desc = ' Project',
                    group = 'Number',
                    action = 'Telescope projects',
                    key = 'd'
                }}
            }
        }

    end
}
