local npairs = require("nvim-autopairs")
local Rule   = require'nvim-autopairs.rule'
npairs.setup ({
  check_ts = true,
  enable_check_bracket_line = true,
  fast_wrap = {
  map = '<M-e>',
  chars = { '{', '[', '(', '"', "'" },
  pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
  end_key = '$',
  keys = 'qwertyuiopzxcvbnmasdfghjkl',
  check_comma = true,
  hightlight = 'Search'
  }
})
require('nvim-treesitter.configs').setup {
    autopairs = {enable = true}
}
require("nvim-autopairs.completion.cmp").setup{
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` after select function or method item
  auto_select = true -- automatically select the first item
}

--add space after surround
npairs.add_rules {
  Rule(' ', ' ')
    :with_pair(function (opts)
      local pair = opts.line:sub(opts.col - 1, opts.col)
      return vim.tbl_contains({ '()', '[]', '{}' }, pair)
    end),
  Rule('( ', ' )')
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match('.%)') ~= nil
      end)
      :use_key(')'),
  Rule('{ ', ' }')
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match('.%}') ~= nil
      end)
      :use_key('}'),
  Rule('[ ', ' ]')
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match('.%]') ~= nil
      end)
      :use_key(']')
}
