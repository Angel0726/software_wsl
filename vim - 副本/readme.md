

bundle可以管理下载几种不同的插件,方式如下：

```shell
`github上的插件``Plugin ``'tpope/vim-fugitive'``来自于http:``/``/``vim``-``scripts.org``/``vim``/``scripts.html的插件``Plugin ``'L9'``非github上的git插件``Plugin ``'git://git.wincent.com/command-t.git'``本地插件``Plugin ``'file:///home/gmarik/path/to/plugin'``" The sparkup vim script ``is` `in` `a subdirectory of this repo called vim.``" Pass the path to ``set` `the runtimepath properly.``" Plugin ``'rstacruz/sparkup'``, {``'rtp'``: ``'vim/'``}``有旧插件的情况下，下载新的插件并重命名以避免冲突``Plugin ``'ascenator/L9'``, {``'name'``: ``'newL9'``}`
```

下载方式除了在vim中运行:PluginInstall外，还可以在命令行中运行：

```
`vim ``+``PluginInstall ``+``qall`
```

其它常用的命令：

```
`:PluginList       ``-` `lists configured plugins``:PluginInstall    ``-` `installs plugins; append `!` to update ``or` `just :PluginUpdate``:PluginSearch foo ``-` `searches ``for` `foo; append `!` to refresh local cache``:PluginClean      ``-` `confirms removal of unused plugins; append `!` to auto``-``approve removal`
```