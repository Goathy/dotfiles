return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local conf = require("telescope.config").values

    harpoon:setup({
      settings = {
        key = function()
          return vim.loop.cwd()
        end,
      },
    })

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
    end

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():append()
    end)

    vim.keymap.set("n", "<leader>hr", function()
      harpoon:list():remove()
    end)

    vim.keymap.set("n", "<leader>hf", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })

    vim.keymap.set("n", "<leader>hF", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
  end,
}
