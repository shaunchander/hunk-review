if vim.g.loaded_hunk_review then
  return
end

vim.g.loaded_hunk_review = 1

local review = require("hunk-review")

vim.api.nvim_create_user_command("HunkReview", function()
  review.open()
end, {
  desc = "Open the hunk review buffer",
})

vim.api.nvim_create_user_command("HunkReviewRefresh", function()
  review.refresh()
end, {
  desc = "Refresh the hunk review buffer",
})

vim.api.nvim_create_user_command("HunkReviewExport", function()
  review.export()
end, {
  desc = "Export structured review instructions",
})

vim.api.nvim_create_user_command("HunkReviewReset", function()
  review.reset()
end, {
  desc = "Reset all review comments and state",
})
