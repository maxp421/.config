vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--J and K allow moving highlighted blocks of text by pressing J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--this J remap allows us to keep our cursor in place when we use J in normal mode
--to append text under cursor to the end of the current line.
vim.keymap.set("n", "J", "mzJ`z")

--these two modify half page jumping with "<C-d>" and "<C-u>" so the cursor 
--stays in the middle while doing half page jumps, way less disorienting.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- these two make sure the cursor stays in the middle of the screen
-- when jumping through search terms.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever -  when we copy a block of text (item1) and then wanna paste it over
-- a different block of text (item2) without losing the copied text from the register (item1), leader + p 
-- will cause (item2) to go to the void register instead, leaving (item1) intact in its register.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHalan - leader + y yanks into the system clipboard
-- thus we can ctrl+v anywhere outside of vim.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--deleting to void register either in normal mode or visual mode
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

--stop Q from working
vim.keymap.set("n", "Q", "<nop>")

--tmux command primeagen - get back to this when I learn tmux
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

--leader + f = format current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--QUICKFIX LIST BINDINGS (NO IDEA WHAT QUICKFIX LIST IS
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--leader+s = replace word you are on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--makes a file executable i.e. bash script writing
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


