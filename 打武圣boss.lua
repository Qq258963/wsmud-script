// raid.flow
// 任意境界监控谣言打公共武圣boss
// 四区：白三三
// 频道：帮派
// 发言人：自己定义
// 关键字：武圣boss出现
// 装备套装默认是1，有不同的话，自己在下面那句 $eq 1 改一下数字。
@js ($bossPlace) = "(content)".match("出现在([^%]+)一带。")[1]
@js ($bossName) = "(content)".match("听说([^%]+)出现在")[1]
@print (bossName)
@print (bossPlace)
stopstate
$to (bossPlace)
@await 200
[if] {r(bossName)}? != null
    $eq 1
    @await 500
    kill {r(bossName)}?
    @untill {r(bossName)}? == null
    relive
    @await 500
    $zdwk
[else]
    $zdwk