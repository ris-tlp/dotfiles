return {
  "jinh0/eyeliner.nvim",
  config = function()
    require("eyeliner").setup({
      -- show highlights only after keypress
      highlight_on_key = true,

      -- dim all other characters if set to true (recommended!)
      dim = false,

      -- set the maximum number of characters eyeliner.nvim will check from
      -- your current cursor position; this is useful if you are dealing with
      -- large files: see https://github.com/jinh0/eyeliner.nvim/issues/41
      max_length = 9999,

      -- add eyeliner to f/F/t/T keymaps;
      -- see section on advanced configuration for more information
      default_keymaps = true,
    })
  end,
}
