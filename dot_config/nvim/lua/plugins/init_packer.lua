local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  print "Cloning Packer..."
  fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
  if fn.empty(fn.glob(install_path)) > 0 then
    error "[ERROR]: failed to clone Packer!"
  else
    print "Packer cloned successfully."
    vim.cmd "packadd packer.nvim"
  end
end

require("packer").init {
  ensure_dependencies = true,
  auto_clean = true,
  compile_on_sync = true,
  git = {
    clone_timeout = 60,
  },
  display = {
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
    prompt_border = "single",
  },
}
