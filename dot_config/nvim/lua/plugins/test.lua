return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "alfaix/neotest-gtest",
    },

    opts = { adapters = { "neotest-gtest" } },
  },
  --  { "nvim-neotest/neotest-gtest" },
  --  {
  --    "nvim-neotest/neotest",
  --    opts = { adapters = { "neotest-gtest" } },
  --  },
}
