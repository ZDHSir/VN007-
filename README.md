# 天际通
> 天际通是华为旗下的物联网产品

# vn007和vn007+
>是通则康威的5g cpe，这是一款便宜好用的5g cpe。

# vn007和vn007+ 如何使用天际通
> 要想在vn007系列产品使用天际通，就得通过修改007系列的串号。因为天际通会绑定激活的华为设备的串号。
> 下面开始介绍方法：
> 方法1（vn007+为例子）:
> 拿到vn007+后，通电进入后台（192.168.0.1），登陆界面使用superadmin登陆。
> 登陆superadmin需要密码，就记下当前的vn007+的设备IMEI，可以先选择使用admin登陆在设备信息查看目前的IMEI串号。
> 拿到IMEI后进入网址：http://x86.z410.icu 输入刚才记下的imei串号计算超级密码。拿到密码后复制计算好的超级密码。
> 再次进入192.168.0.1管理后台，选择使用superadmin登陆，输入复制好的超级密码，如果输入嫌弃太烦，又粘贴不了就使用控制台
> 输入，按下F12，在console控制台输入：document.getElementById('passwd').value="复制的超级密码"
> 点击登录。
> 然后在系统管理=》AT指令执行at指令:AT+SPIMEI=0,"需要修改的串号"
> 重启，就可以改好串号了。
> ```提示：计算超级密码网址:```
>
> ```http://x86.z410.icu,```
>
> ```https://xj.z410.icu,```
>
> ```http://vn007.zhome.icu:5007,```
>
> ```https://tool.zootu.cn/tools/api/007imei/```
>
>或者下载上面的apk也可计算超级密码
>
> 方法2:
> 通过adb获取超级密码然后再通过AT进行改串。
> 太多了，改天补充。

# 品速使用天际通
>目前品速又R200和R200c是常用产品，好吧，我知道的只有这两款。
>品速就比较简单了，首先通电，然后用type-c线连接路由器和电脑。
>打开终端或者cmd，执行：at_cmd_task命令进入at模式
>再执行改串命令: at+lctsn=1,7,"你要修改的串号IMEI" 即可。

### 切记，在没有改串和改了没有重启的情况下，千万不要插入天际通卡，会锁卡的。