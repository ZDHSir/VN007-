## 007系列远程

第一步:

检查adb有没有安装，打开终端输入`adb --version`，如果出现以下信息就是正常的：

```
Android Debug Bridge version 1.0.41
Version 33.0.3-8952118
Installed as /Users/zhang/Library/Android/sdk/platform-tools/adb
```

第二步:

接下来就是开始连接007/007+的网络了，用超级密码打开后台管理并且打开adb调试模式。然后打开终端进行以下操作：

```bash
adb connect 192.168.0.1:5555

//等待出现conected出现。
//接着输入

adb shell

//会提示需要登陆，使用superadmin登陆，密码也是超级用户的密码。
//登陆成功后执行

mount -o remount,rw /

//然后开始执行文件夹中的push.sh或者push.bat

//接着执行
cd /home/ddns

chmod +x ddns-go start.sh

cd /etc/init.d

vi adbd-init
//进入编辑器后按下英文字母 i
//光标移到倒数第一行上方，增加内容 cd /home/ddns && sh start.sh
//接着按下esc，输入英文模式下的 :wq 保存内容
//接着重启路由器。等待重启后打开 http://192.168.0.1:9876

```



