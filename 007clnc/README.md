## 007刷入clnc

首先很多人都想拿007来玩免流，于是有大神把clnc的内核搞出来了，挂在了网上，007也能用上了clnc。



第一步: 准备好clnc包和adb环境。

第二步:

连接上007的网络，检查adb命令可用性。并使用超级密码登录后台打开adb连接权限。

在终端输入`adb --version`如果有显示版本信息即可。

```shell
Android Debug Bridge version 1.0.41
Version 33.0.3-8952118
Installed as /Users/zhang/Library/Android/sdk/platform-tools/adb
```

接着

```shell
//进入clnc所在的目录，并且连接007
adb connect 192.168.0.1
//等待提示成功字样就可以了，接着进入007
adb shell 
//提示登陆的话就使用超级用户密码登录，不提示的话就直接往下走
mount -o remount,rw /
//执行完后新开一个终端，这个终端不要关闭
//新开的终端也要进入到这个clnc目录所在的目录
//接着执行下面的命令将clnc推送到007里面。
adb push clnc /home
//然后切换回前一个终端，执行
chmod 777 -R /home/clnc
//尝试执行clnc里面的start
sh /home/clnc/start.sh
//如果能启动就ok了，也可以执行里面的`stop.sh`去停止服务

```

添加开机自启动：

```shell
//如果上面两个终端你都关闭了，那就重新开一个终端，重新进入adb shell.
adb shell 
//如需登录，使用超级管理员账号密码登录，不用登陆直接往下走
vi /etc/init.d/adbd-init
//进入编辑界面后，按下英文模式键i
//在最后一行exit 0上方加入一句:
sh /home/clnc/start.sh
//添加完了之后，按下esc键，输入英文输入模式下的:wq,保存并退出，接着重启路由器即可。
```

