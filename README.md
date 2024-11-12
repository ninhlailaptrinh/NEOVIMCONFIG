# NEOVIMCONFIG

Đây là cấu hình Neovim của tôi dành cho lập trình viên, được tối ưu hóa cho môi trường Linux (Archlinux/Hyprland) trên laptop Dell G15.

## Tính năng chính

- 🎨 Giao diện: OneDark theme với chế độ trong suốt
- 📁 File explorer: NvimTree
- 🔍 LSP: Native LSP với Mason để quản lý LSP servers
- ✨ Tự động hoàn thành: nvim-cmp
- 📊 Status line: Lualine
- 🌈 Syntax highlighting: Treesitter
- 🎯 Git integration: Gitsigns
- 🔎 Diagnostic: Trouble
- 🌈 Rainbow brackets
- 📏 Indent guides: mini.indentscope
- 📋 Clipboard manager: Yanky

## Yêu cầu

- Neovim >= 0.8.0
- Git
- [Packer](https://github.com/wbthomason/packer.nvim) - Plugin manager
- (Tùy chọn) Nerd Font cho các icon

## Cài đặt

1. Sao chép repo này vào thư mục cấu hình Neovim: `git clone https://github.com/ninhlailaptrinh/NEOVIMCONFIG.git ~/.config/nvim`
2. Mở Neovim và chạy lệnh `:PackerSync` để cài đặt các plugin.
3. Khởi động lại Neovim và bắt đầu sử dụng!
