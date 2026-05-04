local logo = [[
                                                                                                    
     ==          =                                                                                  
   =====         ===                                                                                
  =======        +++++                                                       ###                    
++*========      +++++++                                                                            
****+=======     +++++++       # #####      ######      ######  ###      ### ###  ### ####   #####  
******=======    +++++++       ##     ##   #      #   ##      #  ###    ###  ###  ####   #####  ### 
****** =++=+++   +++++++       #       #  #        # ##        #  ###   ###  ###  ###    ####    ###
******  ++++++++  ++++++       #       #  #########  #         #  ###  ###   ###  ###    ####    ###
******   ++++++++ ++++++       #       #  #          #         #   ######    ###  ###    ####    ###
******     +++++++******       #       #   #          #       ##    ####     ###  ###    ####    ###
******      +++++++*****       #       #    #######    #######       ###     ###  ###    ####    ###
######       ++++++++***                                                                            
 #####        ++++++++                                                                              
   ###          ++++                                                                                
     #           **                                                                                 
                                                                                                    
]]
local first = [[
                                                                                                    
     ==          =                                                                                  
   =====         ===                                                                                
]]
local v = vim.version()
local version_string = string.format("%d.%d.%d", v.major, v.minor, v.patch)
local version_header = [[
                                                                                          v]] .. version_string

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          -- header = { logo, hl = "SnacksDashboardHeader" },
          header = {
            -- { logo, hl = "NeovimLogoGreen" },
            { "\n" },
            { first, hl = "NeovimLogoGreen" },
            { "  =======        +++++                                                       ", hl = "NeovimLogoGreen" },
            { "###                    " },
            { "\n" },
            { "++*", hl = "NeovimLogoBlue" },
            {
              "========      +++++++                                                                            ",
              hl = "NeovimLogoGreen",
            },
            { "\n" },
            { "****+", hl = "NeovimLogoBlue" },
            { "=======     +++++++       ", hl = "NeovimLogoGreen" },
            { "# #####      ######      ######  ###      ### ###  ### ####   #####  " },
            { "\n" },
            { "******", hl = "NeovimLogoBlue" },
            { "=======    +++++++       ", hl = "NeovimLogoGreen" },
            { "##     ##   #      #   ##      #  ###    ###  ###  ####   #####  ### " },
            { "\n" },
            { "******", hl = "NeovimLogoBlue" },
            { " =++=+++   +++++++       ", hl = "NeovimLogoGreen" },
            { "##     ##   #      #   ##      #  ###    ###  ###  ####   #####  ### " },
            { "\n" },
            { "****** ", hl = "NeovimLogoBlue" },
            { "=++=+++   +++++++       ", hl = "NeovimLogoGreen" },
            { "#       #  #        # ##        #  ###   ###  ###  ###    ####    ###" },
            { "\n" },
            { "******  ", hl = "NeovimLogoBlue" },
            { "++++++++  ++++++       ", hl = "NeovimLogoGreen" },
            { "#       #  #########  #         #  ###  ###   ###  ###    ####    ###" },
            { "\n" },
            { "******   ", hl = "NeovimLogoBlue" },
            { "++++++++ ++++++       ", hl = "NeovimLogoGreen" },
            { "#       #  #          #         #   ######    ###  ###    ####    ###" },
            { "\n" },
            { "******     ", hl = "NeovimLogoBlue" },
            { "+++++++******       ", hl = "NeovimLogoGreen" },
            { "#       #   #          #       ##    ####     ###  ###    ####    ###" },
            { "\n" },
            { "******      ", hl = "NeovimLogoBlue" },
            { "+++++++*****       ", hl = "NeovimLogoGreen" },
            { "#       #    #######    #######       ###     ###  ###    ####    ###" },
            { "\n" },
            { "######       ", hl = "NeovimLogoBlue" },
            {
              "++++++++***                                                                            ",
              hl = "NeovimLogoGreen",
            },
            { "\n" },
            { " #####        ", hl = "NeovimLogoBlue" },
            {
              "++++++++                                                                              ",
              hl = "NeovimLogoGreen",
            },
            { "\n" },
            { "   ###          ", hl = "NeovimLogoBlue" },
            {
              "++++                                                                                ",
              hl = "NeovimLogoGreen",
            },
            { "\n" },
            { "     #           ", hl = "NeovimLogoBlue" },
            {
              "**                                                                                 ",
              hl = "NeovimLogoGreen",
            },
            { "\n" },
            { "                                                                                                    " },
            { "\n" },
            { version_header },
          },
        },
      },
      scroll = { enabled = false },
      terminal = {
        win = {
          position = "right",
          width = 0.3,
        },
      },
      picker = {
        sources = {
          explorer = {
            hidden = true, -- Show hidden files (dotfiles)
            ignored = true, -- Show Git-ignored files
          },
          files = {
            hidden = true, -- Show hidden files (dotfiles)
            ignored = true, -- Show Git-ignored files
          },
        },
      },
    },
  },
}
