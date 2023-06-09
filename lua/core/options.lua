-- Add any additional options here
local G = require('G')
local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = " "

opt.encoding = "utf-8"
opt.autowrite = true --  启用自动写入
opt.clipboard = "unnamedplus" -- 与系统剪贴板同步
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- 隐藏*标记为粗体和斜体
opt.confirm = true -- 退出修改后的缓冲区前确认保存更改
opt.cursorline = true -- 启用当前行的高亮显示
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case忽略大小写
opt.inccommand = "nosplit" -- 预览增量替换
opt.list = false -- 显示一些不可见的字符（制表符...
opt.mouse = "a" -- 启用鼠标模式
opt.number = true -- 显示行号
opt.relativenumber = true -- 相对行号
opt.pumblend = 10 -- 弹出菜单
opt.pumheight = 10 -- 弹出窗口中的最大条目数
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = false -- 不要显示模式，因为我们有一个状态线
opt.scrolloff = 4 -- 上下文线
opt.sidescrolloff = 8 -- 上下文列
opt.signcolumn = "yes" -- 始终显示标志栏，否则每次都会改变文本
opt.numberwidth = 4
opt.smartcase = true -- 不要忽略大写字母的实例
opt.shiftwidth = 4 -- 缩进尺寸
opt.smarttab = true -- 根据file其他地方判断缩进规则
opt.shiftround = true -- 环绕缩进
opt.autoindent = true -- 自动缩进(根据上行)
opt.smartindent = true -- 智能缩进
opt.spelllang = { "en" } -- 拼写
opt.splitbelow = true -- 将新窗口置于当前窗口之下
opt.splitright = true -- 将新窗口置于当前窗口右边
opt.termguicolors = true -- 真彩色支持
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- 保存交换文件并触发 CursorHold
opt.wildmode = "longest:full,full" -- 命令行补全模式
opt.winminwidth = 5 -- 最小窗口宽度
opt.wrap = true -- 自动换行
opt.matchtime = 1
opt.hidden = true
opt.cmdheight = 1


-- 折叠
opt.foldenable = true
opt.foldmethod = "indent" -- indent 按段落 | manual 手动
opt.foldlevelstart = 99

--光标回到上次编辑位置
G.cmd([[ au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif ]])

if vim.fn.has("nvim-0.9.0") == 1 then
  opt.splitkeep = "screen"
  opt.shortmess:append({ C = true })
end

-- Fix markdown indentation settings
-- 修复 markdown 缩进设置
vim.g.markdown_recommended_style = 0

