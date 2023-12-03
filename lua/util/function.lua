function MyNext()
  print("Calling MyNext function")

	if vim.fn.exists("*tabpagenr") and vim.fn.tabpagenr("$") ~= 1 then
		-- Tab support and tabs open
		vim.api.nvim_feedkeys("gt", "n", true)
	else
		-- No tab support or no tabs open
		vim.cmd(":bnext")
	end
end

function MyPrev()
  print("Calling MyPrev function")
	if vim.fn.exists("*tabpagenr") and vim.fn.tabpagenr("$") ~= 1 then
		-- Tab support and tabs open
		vim.api.nvim_feedkeys("gT", "n", true)
	else
		-- No tab support or no tabs open
		vim.cmd(":bprev")
	end
end

return {
  MyNext = MyNext,
  MyPrev = MyPrev,
}
