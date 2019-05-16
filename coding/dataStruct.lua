--lua 数据类型
--lua 是动态类型语言，变量不要类型定义，只需要为变量赋值即可
--值储存在变量中，作为参数传递或结果返回，这一点与 c/c++/java 一致
--lua 中有 8 个基本数据类型：nil、boolean、number、string、userdata、function、thread、table
--
--其中：
--nil:这个最简单，只有值 nil 属于该类，表示一个无效值 (在条件表达式中相当于 false)
--boolean:包含两个值 false 和 true 与 c/c++ 一致
--number:表示双精度类型实浮点数
--string:字符串，相当于 c/c++ 中的 sytring
--function:用户自定义函数，包括 c/lua 编写的函数
--userdata:表示任意存储在变量中的 c 数据结构
--thread:表示执行的独立线路，用于执行协同程序，可当作 thread 线程来看
--table:lua 中的表结构，实际上是一个关联数组，数组的索引可以是数字、字符出、表
--在 lua 中，table 的创建是通过构造表达式来完成的额，最简单的构造表达式是 {} 用来创建一个空表

print(type("Hello World"))      --string
print(type(10.4 * 3))           --number
print(type(print))              --function
print(type(type))               --function
print(type(true))               --boolean
print(type(nil))                --nil
print(type(type(x)))            --string

--nil
--表示一种没有任何有效值，它只有一个值 nil，例如打印一个没有初始化的变量

print(a)    --nil

--对于变量 table，nil 还有一个删除作用，即取消全局变量

print("对于变量 table，nil 还有一个删除作用，即取消全局变量")
table1 = {key1 = "val1", key2 = "val2", "val3"}
for k, v in pairs(table1) do
    print(k .. " - " .. v)
end
table1.key1 = nil;
for k, v in pairs(table1) do
    print(k .. " - " .. v)
end

--nil 作比较时应加上双引号 “”

print("nil 作比较时应加上双引号")
type(x)
--type(x) == nil
--type(x) == "nil"

--type(x) == nil 的结果是 false 的原因是因为 type(type(x)) == string

type(type(x))

--boolean 布尔
--boolean 只有两个值，true 和 false

print("实例")
print(type(true))
print(type(false))
print(type(nil))
if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false")
end

--number 数字
--lua 默认只有一种 number 类型 double 双精度类型

print("实例")
print(type(2))
print(type(2.2))
print(type(0.2))
--print(type(2e + 1))
--print(type(0.2e - 1))
--print(type(7.2345654e - 06))

--string 字符串
string1 = "This is string1"
string2 = "This is string2"
html = [[
<html>
<head></head>
<body>
    <a href="http://www.baidu.com">百度</a>    
</body>
</html>
]]
print(html)

--在对一个数字字符进行算术操作时，lua 会尝试将这个数字字符串转换成一个数字
print("2" + 6)
print("2" + "6")
print("2 + 6")

--print("error" + 1)

print("a" .. 'b')
print(157 .. 428)

--字符串连接使用的是 ..

--使用 # 来计算字符串的长度，放在字符出前面

len = "leetcode"
print(#len)
print(#"Hello World!")
print(#"www.baidu.com")

--table 表
--实例
local tb1 = {}
local tb2 = {"apple", "pear", "orange", "grape"}

--hello.lua 脚本文件

a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do 
    print(k .. " : " .. v)
end
local tb3 = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tb3) do
    print("Key", key)
end

-- table_test3.lua 脚本文件
a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])

--function 函数
--函数看作第一类值，函数可以存在于变量里

function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end
print(factorial(5))
factorial2 = factorial
print(factorial2(5))

--function 还可以通过匿名函数来传递

function test(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v));
    end
end
tab = {key1 = "val1", key2 = "val2"};
test(tab, 
function(key, val)
    return key .. " = " .. val;
end
);

--userdata 自定义类型
