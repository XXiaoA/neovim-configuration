# neovim_configuration  


## 使用我的配置
1. 你需要安装neovim，并且确保版本在**0.6**及以上
2. clone本仓库的内容到你nvim的配置目录，例如Linux的`~/.config/nvim/`。注意是仓库内容，而不是仓库，可以clone仓库到`~/.config/`然后改名为`nvim`
3. 完成第3步后打开nvim，等待安装[Packer.nvim](./docs/plugins/packer.md) ，有报错很正常。一路跳过即可。然后normal模式执行 `:PackerInstall`
4. 安装[相关依赖](https://github.com/XXiaoA/neovim-configuration#依赖)


## 依赖
* 初次使用需要安装以下依赖，以下以**ubuntu**系统为例 ，其他系统请按照注释自行百度
```
# 需先安装python，然后安装 python-lsp-server
pip install python-lsp-server  
# 安装 python3.8-venv, g++, gcc, make, nodejs npm
apt install python3.8-venv g++ gcc make nodejs npm
# 用npm安装luafmt(可选，格式化lua文件)
npm i -g lua-fmt
# 安装 ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb
 ```

* 如果telescope-fzf-native报错fzf未安装尝试执行以下命令
```
make -C ~/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim
cd ~/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim && make clean && make
```

* 若想使用toggleterm.nvim的`lazygit`窗口请自行百度查找安装lazygit的教程


## 快捷键
[点此见快捷键](./docs/keybindings.md)  


## 注意事项！
**如果你在使用过程中发现问题欢迎提issue，我会尽快回复**

* neovim版本必须***0.6***以上，建议最新版  
* 由于大陆被墙的原因，Packer安装插件困难，所以我使用了镜像。如果不需要可以删除[该文件](https://github.com/XXiaoA/neovim-configuration/blob/master/lua/plugins.lua) 的10-14行
* ~~treesitter插件里的lua高亮和主题冲突，删除`$HOME/.local/share/nvim/site/pack/packer/start/zephyr-nvim/after/queries/lua/highlights.scm`文件即可。[见此](https://github.com/nvim-treesitter/nvim-treesitter/issues/2435)~~


## [插件使用指北](./docs/allPlugins.md)
各个插件的 **简单** 食用方法

## 插件列表
* [Packer.nvim](https://github.com/wbthomason/packer.nvim) 插件管理
* [gruvbox](https://github.com/ellisonleao/gruvbox.nvim) 主题
* [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) 目录树
* [bufferline](https://github.com/akinsho/bufferline.nvim) buffer显示
* [语法高亮](https://github.com/nvim-treesitter/nvim-treesitter)
* [Comment](https://github.com/numToStr/Comment.nvim) 快捷注释
* [自动补全](https://github.com/hrsh7th/nvim-cmp)  
* [文件搜索等](https://github.com/nvim-telescope/telescope.nvim)
* [括号补全](https://github.com/windwp/nvim-autopairs) 
* [信标](https://github.com/danilamihailov/beacon.nvim) 
* [搜索转跳提示](https://github.com/inside/vim-search-pulse) 
* [缩进线显示](https://github.com/lukas-reineke/indent-blankline.nvim) 
* [状态栏](https://github.com/nvim-lualine/lualine.nvim) 
* [多光标](https://github.com/mg979/vim-visual-multi) 
* [显示颜色](https://github.com/norcalli/nvim-colorizer.lua) 
* [命令行窗口](https://github.com/akinsho/toggleterm.nvim) 
* [制图](https://github.com/jbyuki/venn.nvim) 
* [彩色括号](https://github.com/luochen1990/rainbow) 
* [运行代码](https://github.com/michaelb/sniprun)
* [启动页](https://github.com/glepnir/dashboard-nvim) 
* [加快启动速度](https://github.com/lewis6991/impatient.nvim) 
* [自动创建文件夹](https://github.com/DataWraith/auto_mkdir) 
* [一键对齐](https://github.com/junegunn/vim-easy-align) 
* [surround](https://github.com/tpope/vim-surround) 
* [自动保存](https://github.com/Pocco81/AutoSave.nvim) 
* [计算启动时间](https://github.com/dstein64/vim-startuptime) 
* [快速移动](https://github.com/phaazon/hop.nvim',) 
* [中文文档](https://github.com/yianwillis/vimcdoc) 
* [翻译](https://github.com/voldikss/vim-translator) 
* [格式化代码](https://github.com/mhartington/formatter.nvim) 
* [内容搜索](https://github.com/windwp/nvim-spectre) 


## 其他
### TODO
- [ ] 完善快捷键说明  
- [ ] 配置lsp  
- [ ] 给每个插件加使用指北  

### 说明：
感谢：[nshen/learn-neovim-lua](https://github.com/nshen/learn-neovim-lua)
