## 环境安装

1. 安装packer插件管理器

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

2. 安装NodeJS > 14环境

```shell
curl -sL install-node.vercel.app/lts | bash
```

3. 安装lsp环境

    - 3.1 sql-lsp: `npm i -g sql-language-server`

        - 若遇到：`npm ERR! The operation was rejected by your operating system.`，加sudo

    - 3.2 lua-lsp

        - 需要`luarocks`，https://github.com/luarocks/luarocks

        - 执行: `brew update`

        - 执行: `brew install luarocks`

        - 执行: `luarocks install --server=http://luarocks.org/dev lua-lsp`

4. 打开nvim，执行命令安装插件 `:PakcerSync`

4. 打开nvim，执行命令安装coc语言扩展

    - 直接执行：`CocInstall coc-clangd coc-clangd coc-go coc-java coc-json coc-rls coc-json`

    - 共包含：

        4.1 `CocInstall coc-clangd`

        4.2 `CocInstall coc-go`

        4.3 `CocInstall coc-java`

        4.4 `CocInstall coc-json`

        4.5 `CocInstall coc-rls`
        
        4.6 `CocInstall coc-json`

5. 打开nvim，执行命令安装coc功能扩展
    -  直接执行：`CocInstall coc-snippets coc-git`
    
    - 共包含：
    
        5.0 `CocInstall coc-snippets`
    
        5.1 `CocInstall coc-git`


## 快捷键

### 左侧文件树（nvim-tree）

- 打开/关闭文件树：`,n`

- 新建文件：`a`

- 修改文件名：`r`

- 删除文件：`d`

- 复制文件：`y`

- 粘贴文件：`p`

### lsp

补全：`tab`

查找上一个报错：`[g`

查找下一个报错：`g]`

跳转代码定义：`gd`

查看文档：`,h`

变量重命名：`,rn`

选中代码格式化：`,f`

### buffer

跳转至下一个buffer：`Ctrl + l`

跳转至上一个buffer：`Ctrl + h`

关闭当前buffer：`,w`
