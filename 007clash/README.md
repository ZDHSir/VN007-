# 项目介绍

此项目是通过使用开源项目[clash](https://github.com/Dreamacro/clash)作为核心程序，再结合脚本实现简单的代理功能。

主要是为了解决我们在服务器上下载GitHub等一些国外资源速度慢的问题。



# 使用教程

首先使用adb连接你的007，接着将clash文件夹推入007内部。

```shell
adb shell 
//如果需要登陆则使用superadmin登录,如果不需要就往下走
mount -o remount,rw /
//重开一个终端执行
adb push clash /home

```



### 启动程序

启动前需要增加一个环境变量，执行：

```shell
export URL='你的订阅地址'
```

直接运行脚本文件`start.sh`

- 进入项目目录

```bash
$ cd /home/clash
```

- 运行启动脚本

```bash
$ sh start.sh
配置文件config.yaml下载成功！                              [  OK  ]
服务启动成功！                                             [  OK  ]
系统代理http_proxy/https_proxy设置成功，请在当前窗口执行以下命令加载环境变量:

source /etc/profile.d/clash.sh

```

```bash
$ source /etc/profile.d/clash.sh
```

- 检查服务端口

```bash
$ netstat -tln | grep -E '9090|789.'
tcp        0      0 127.0.0.1:9090          0.0.0.0:*               LISTEN     
tcp6       0      0 :::7890                 :::*                    LISTEN     
tcp6       0      0 :::7891                 :::*                    LISTEN     
tcp6       0      0 :::7892                 :::*                    LISTEN
```

- 检查环境变量

```bash
$ env | grep -E 'http_proxy|https_proxy'
http_proxy=http://127.0.0.1:7890
https_proxy=http://127.0.0.1:7890
```

以上步鄹如果正常，说明服务clash程序启动成功，现在就可以体验高速下载github资源了。




### 停止程序

- 进入项目目录

```bash
$ cd clash-for-linux
```

- 关闭服务

```bash
$ sh shutdown.sh
服务关闭成功，请在已打开的窗口执行以下命令：
unset http_proxy
unset https_proxy
```

```bash
$ unset http_proxy
$ unset https_proxy
```

然后检查程序端口、进程以及环境变量`http_proxy|https_proxy`，若都没则说明服务正常关闭。




### Clash Dashboard

- 访问 Clash Dashboard

通过浏览器访问 `start.sh` 执行成功后输出的地址，例如：http://192.168.0.1:9090/ui

- 登录管理界面

在`API Base URL`一栏中输入：http://IP:9090 ，在`Secret(optional)`一栏中输入启动成功后输出的Secret。

点击Add并选择刚刚输入的管理界面地址，之后便可在浏览器上进行一些配置。

- 更多教程

此 Clash Dashboard 使用的是[yacd](https://github.com/haishanh/yacd)项目，详细使用方法请移步到yacd上查询。





# 使用须知

- 此项目不提供任何订阅信息，请自行准备Clash订阅地址。
- 运行前请手动更改`start.sh`脚本中的URL变量值，否则无法正常运行。
- 当前在RHEL系列和Debian系列Linux系统中测试过，其他系列可能需要适当修改脚本。
- 支持 x86_64/aarch64 平台
