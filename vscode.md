# 主题

| 类别     | 说明                                      |
| -------- | ----------------------------------------- |
| 颜色主题 | 文件->首选项->颜色主题                    |
| 图标主题 | 文件->首选项->文件图标主题:`VScode icon`s |

# 插件

| 插件                 | 说明                                                         |
| -------------------- | ------------------------------------------------------------ |
| `Remote-WSL`         | 远程WSL                                                      |
| `Remote - SSH`       | 远程使用ssh                                                  |
| `python`             | 调试python                                                   |
| `autopep8`           | 格式化python代码                                             |
| `GitLens`            | `git`代码管理工具                                            |
| `Code Spell Checker` | 单词拼写检查                                                 |
| `Guides`             | 提供缩进检查                                                 |
| `Settings Sync`      | 将VScode的配置上传到github，以后换机器，重装系统，随时下载(不能使用gist) |
| `koroFileHeader`     | 文件头注释（ctrl+alt+i） 和函数头注释（ctrl+alt+t）工具      |
| `code-runner`        | 一键运行程序                                                 |

## koroFileHeader

打开首相页->搜索`fileheader`文件；在`fileheader`文件中输入

```json
{
    "fileheader.customMade":{
    "Description":"",
    "Author": "angel",
    "Date":"Do not edit",
    "LastEditors": "angel",
    "LastEditTime":"Do not edit"
    },   
    "fileheader.configObj": {
    "autoAdd": true,     //自动添加头部注释开启才能自动添加
    "autoAlready": true, // 默认开启
    "beforeAnnotation": {                              //文件头部自动添加
        "py": "#!/usr/bin/env python\n# coding=utf-8" // py文件默认，可修改
      },
    "switch": {                      //换行自动添加注释符
        "newlineAddAnnotation": true // 默认开启
      },
    "fileheader.configObj": {
        "moveCursor": true           // 移动光标到`Description :`所在行
      }
    }
}
```

# code-runner



| 参数                                   | 说明                       |
| -------------------------------------- | -------------------------- |
| "code-runner.fileDirectoryAsCwd": true | 运行相对目录；用于修改文件 |
|                                        |                            |
|                                        |                            |



# test（目前插件有问题）

1. 安装`Pytest`测试框架。打开命令端，输入`Python: Configure Tests`命令安装`Pytest`

2. 发现测试文件。打开命令端，输入`Python: Discover Tests`命令，并选择搜索测试文件的文件夹
3. 进行测试

# 附录

- [ ] 使用ssh连接远程服务器