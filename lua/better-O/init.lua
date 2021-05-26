local opts = { enter_insert_mode = true }

local function setup(user_opts)
	opts = vim.tbl_extend('force', opts, user_opts or {})
    vim.api.nvim_set_keymap('n', 'O',
                            ':lua require("better-O").insert_new_line()<CR>',
                            {silent = true, noremap = true})
end

local function insert_new_line()
    local current_line = vim.api.nvim_win_get_cursor(0)[1]
	local empty_lines, count = { "" }, 1
	while vim.v.count > count do
		table.insert(empty_lines, "")
		count = count + 1
	end
	vim.fn.append(current_line - 1, empty_lines)
	vim.api.nvim_win_set_cursor(0, { current_line, 0})
	if opts.enter_insert_mode then
		vim.cmd('startinsert')
	end
end

return {setup = setup, insert_new_line = insert_new_line}
