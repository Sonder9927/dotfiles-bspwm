-- using fish may be slow for lvim
-- vim.opt.shell = "/bin/sh"

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
-- add your own keymapping
-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["a"] = {
	name = "actions",
	a = { "<plug>(coc-codeaction-cursor)", "codeaction-cursor" },
	f = { "<plug>(coc-fix-current)", "fix" },
	s = { ":call CocAction('doHover')<cr>", "doHover" },
	l = { ":CocDiagnostics<cr>", "diagnostics" },
	L = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "list workspaces" },
	p = { "<plug>(coc-diagnostic-prev)", "prev" },
	n = { "<plug>(coc-diagnostic-next)", "next" },
}
-- reset default
lvim.builtin.which_key.mappings["bc"] = { "<cmd>BufferKill<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["c"] = { "<cmd>Telescope commands<cr>", "Commands" }

-- rust keymap
lvim.builtin.which_key.mappings["r"] = {
	name = "Rust",
	r = { "<cmd>RustRunnables<Cr>", "Runnables" },
	t = { "<cmd>lua _CARGO_TEST()<cr>", "Cargo Test" },
	m = { "<cmd>RustExpandMacro<Cr>", "Expand Macro" },
	C = { "<cmd>RustOpenCargo<Cr>", "Open Cargo" },
	p = { "<cmd>RustParentModule<Cr>", "Parent Module" },
	d = { "<cmd>RustDebuggables<Cr>", "Debuggables" },
	v = { "<cmd>RustViewCrateGraph<Cr>", "View Crate Graph" },
	R = {
		"<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<Cr>",
		"Reload Workspace",
	},
	o = { "<cmd>RustOpenExternalDocs<Cr>", "Open External Docs" },
}
lvim.builtin.which_key.mappings["rc"] = {
	name = "[crates]",
	c = { "<cmd>RustOpenCargo<Cr>", "Open Cargo" },
	t = { "<cmd>lua require'crates'.toggle()<cr>", "toggle" },
	r = { "<cmd>lua require'crates'.reload()<cr>", "reload" },

	P = { "<cmd>lua require'crates'.show_popup()<cr>", "[crate] show popup" },
	i = { "<cmd>lua require'crates'.show_crate_popup()<cr>", "[crate] show info" },
	v = { "<cmd>lua require'crates'.show_versions_popup()<cr>", "[crate] show version" },
	f = { "<cmd>lua require'crates'.show_features_popup()<cr>", "[crate] show features" },
	d = { "<cmd>lua require'crates'.show_dependencies_popup()<cr>", "[crate] show dependencies" },

	u = { "<cmd>lua require'crates'.updata_crate()<cr>", "update" },
	a = { "<cmd>lua require'crates'.updata_all_crate()<cr>", "update all" },
	U = { "<cmd>lua require'crates'.upgrade_crate()<cr>", "upgrade" },
	A = { "<cmd>lua require'crates'.upgrade_all_crate()<cr>", "upgrade all" },

	H = { "<cmd>lua require'crates'.open_homepage()<cr>", "[crate] open homepage" },
	R = { "<cmd>lua require'crates'.open_repository()<cr>", "[crate] open repository" },
	D = { "<cmd>lua require'crates'.open_documentation()<cr>", "[crate] open document" },
	C = { "<cmd>lua require'crates'.open_crates_io()<cr>", "open crates.io" },
}

-- -- additional lsp cmd
lvim.builtin.which_key.mappings["lh"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", "hover" }
lvim.builtin.which_key.mappings["lH"] = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "signature help" }
-- swap conda env keymap
lvim.builtin.which_key.mappings["lc"] = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" }
-- run python code
lvim.builtin.which_key.mappings["lp"] = { "<cmd>w<cr><cmd>sp | terminal python %<cr>", "Run Python" }

-- Trouble
lvim.builtin.which_key.mappings["t"] = {
	name = "Trouble",
	r = { "<cmd>Trouble lsp_references<cr>", "References" },
	d = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
	t = { "<cmd>Trouble lsp_type_definitions<cr>", "Definitions" },
	w = { "<cmd>Trouble workspace_diagnostics<cr>", "Diagnostics" },
	D = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
	f = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<cmd>Trouble loclist<cr>", "LocationList" },
}

-- Additional binding for debug
lvim.builtin.which_key.mappings["dm"] = { "<cmd>lua require('neotest').run.run()<cr>", "Test Method" }
lvim.builtin.which_key.mappings["dM"] =
	{ "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP" }
lvim.builtin.which_key.mappings["df"] = {
	"<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>",
	"Test Class",
}
lvim.builtin.which_key.mappings["dF"] = {
	"<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
	"Test Class DAP",
}
lvim.builtin.which_key.mappings["dS"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" }

-- lsp
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })
-- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- See: https://github.com/neovim/nvim-lspconfig/tree/54eb2a070a4f389b1be0f98070f81d23e2b1a715#suggested-configuration

-- ruff_lsp
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
	-- Mappings.
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "<space>lf", function()
		vim.lsp.buf.format({ async = true })
	end, bufopts)

	client.server_capabilities.hoverProvider = false
end

-- Configure `ruff-lsp`.
-- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ruff_lsp
-- For the default config, along with instructions on how to customize the settings
require("lspconfig").ruff_lsp.setup({
	on_attach = on_attach,
	init_options = {
		settings = {
			-- Any extra CLI arguments for `ruff` go here.
			args = {},
		},
	},
})
-- setup formatting
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	-- { command = "ruff", filetypes = { "python" }, args = { "--line-length=79" } },
	{ command = "stylua", filetypes = { "lua" } },
	-- { command = "prettierd", extra_filetypes = { "toml" } },
	{ command = "taplo", filetypes = { "toml" } },
	-- { command = "deno_fmt" },
	{ command = "beautysh" },
	{ command = "fprettify", filetypes = { "fortran" }, args = { "--silent" } },
	-- {
	-- 	command = "just",
	-- 	filetypes = { "justfile" },
	-- 	args = { "--fmt", "--unstable", "-f", "$FILENAME" },
	-- },
})

-- setup linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	-- { command = "ruff", filetypes = { "python" } },
	-- {
	-- 	command = "shellcheck",
	-- 	args = { "--severity", "warning" },
	-- },
})

-- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
-- install plugins
lvim.plugins = {
	-- UI
	-- "stevearc/dressing.nvim",
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	-- trouble
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	-- python
	{
		"neoclide/coc.nvim",
		branch = "master",
		build = "yarn install --frozen-lockfile",
	},
	"AckslD/swenv.nvim",
	"mfussenegger/nvim-dap-python",
	"nvim-neotest/neotest",
	"nvim-neotest/neotest-python",
	-- rust
	{ "simrat39/rust-tools.nvim", ft = "rust" },
	{
		"saecki/crates.nvim",
		ft = { "rust", "toml" },
		version = "v0.3.0",
		event = { "BufRead Cargo.toml" },
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup({
				null_ls = {
					enabled = true,
					name = "crates.nvim",
				},
				popup = {
					border = "rounded",
				},
			})
		end,
	},
	-- eye candy for the impatient
	{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup()
		end,
	},
}

-- setup debug adapter
lvim.builtin.dap.active = true
local mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")
local codelldb_path = mason_path .. "bin/codelldb"
local liblldb_path = mason_path .. "packages/codelldb/extension/lldb/lib/liblldb"

-- -- The path in windows is different
-- local this_os = vim.loop.os_uname().sysname
-- if this_os:find "Windows" then
--   codelldb_path = mason_path .. "packages\\codelldb\\extension\\adapter\\codelldb.exe"
--   liblldb_path = mason_path .. "packages\\codelldb\\extension\\lldb\\bin\\liblldb.dll"
-- else
--   -- The liblldb extension is .so for linux and .dylib for macOS
--   liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
-- end

pcall(function()
	require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
	require("rust-tools").setup({
		tools = {
			executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
			reload_workspace_from_cargo_toml = true,
			runnables = {
				use_telescope = true,
			},
			inlay_hints = {
				auto = true,
				only_current_line = false,
				show_parameter_hints = false,
				parameter_hints_prefix = "<-",
				other_hints_prefix = "=>",
				max_len_align = false,
				max_len_align_padding = 1,
				right_align = false,
				right_align_padding = 7,
				highlight = "Comment",
			},
			hover_actions = {
				border = "rounded",
			},
			on_initialized = function()
				vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" }, {
					pattern = { "*.rs" },
					callback = function()
						local _, _ = pcall(vim.lsp.codelens.refresh)
					end,
				})
			end,
		},
		dap = {
			-- adapter= codelldb_adapter,
			adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
		},
		server = {
			on_attach = function(client, bufnr)
				require("lvim.lsp").common_on_attach(client, bufnr)
				local rt = require("rust-tools")
				vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
			end,

			capabilities = require("lvim.lsp").common_capabilities(),
			settings = {
				["rust-analyzer"] = {
					-- cargo = {
					-- 	allFeatures = true,
					-- },
					lens = {
						enable = true,
					},
					checkOnSave = {
						enable = true,
						command = "clippy",
					},
				},
			},
		},
	})
end)

lvim.builtin.dap.on_config_done = function(dap)
	dap.adapters.codelldb = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
	dap.configurations.rust = {
		{
			name = "Launch file",
			type = "codelldb",
			request = "launch",
			program = function()
				return vim.fn.input({ "Path to executable: ", vim.fn.getcwd() .. "/", "file" })
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = false,
		},
	}
end

-- setup switching
require("swenv").setup({
	post_set_venv = function()
		vim.cmd("LspRestart")
	end,
})

-- setup testing
require("neotest").setup({
	adapters = {
		require("neotest-python")({
			-- Extra arguments for nvim-dap configuration
			-- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
			dap = {
				justMyCode = false,
				console = "integratedTerminal",
			},
			args = { "--log-level", "DEBUG", "--quiet" },
			runner = "pytest",
		}),
	},
})

-- setup noice
require("noice").setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	presets = {
		bottom_search = true,
		command_palette = true,
		long_message_to_split = true,
		inc_rename = false,
		lsp_doc_border = false,
	},
})
require("telescope").load_extension("noice")
