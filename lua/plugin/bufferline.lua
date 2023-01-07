require("bufferline").setup {
  options = {
      -- 使用 nvim 内置lsp
      diagnostics = "nvim_lsp",
      mode = "buffers",
      numbers = "ordinal",
      -- 左侧让出 nvim-tree 的位置
      offsets = {{
          filetype = "NvimTree",
          text = "  Brave And Enthusiastic",
          highlight = "Directory",
          text_align = "left"
      }}
  }
}