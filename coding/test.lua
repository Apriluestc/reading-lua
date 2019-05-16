--lua 变量
a = 5               --全局变量
local b = 5         --局部变量
function joke()
    c = 5
    local d = 6
end

joke()
print(c, d)         --5 nil
print(c ,b)
do
    local a = 6
    b = 6
    print(a, b)     --6 6
end

print(a, b)         --5 6

local awd = 10
function test()
    m = 10
    local s = 10
end
--test()
print(m, s)         --nil nil

--赋值语句
--赋值语句是改变一个变量的值和改变表域的最基本方法

a = "hello" .. "world"
print(a)
--lua 可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分隔开，赋值语句
--右边会依次赋给左边的变量
--a, b = 10, 2 * x  <-->    a = 10; b = 2 * x
--遇到赋值语句 lua 会先计算右边所有值然后进行赋值操作，所以我们可以这样进行交换变量的值

x = 10
y = 20
print(x, y)
x, y = y, x         --swap(x, y)
print(x, y)

--当变量个数和值的个数不一样时，lua 会一直以为变量个数为基础采取一下策略
--[[
--a.变量个数 > 值的个数         按变量个数补足 nil
--b.变量个数 < 值的个数         多余的值被忽略掉
--]]

print("实例")
a, b, c = 0, 1
print(a, b, c)      --0, 1, nil
a, b = a + 1, b + 1, b + 2
print(a, b)         --1 2
a, b, c = 0
print(a, b, c)      --0 nil nil
--多赋值经常用来交换变量，或将函数调用返回给变量
--a, b = f()
--f() 返回两个值，第一个赋给 a, 第二个赋给 b
--应该尽可能的使用局部变量，避免命名冲突 & 访问局部变量的速度比全局变量快

--索引
--对 table 的索引使用 [] lua 也提供了 .操作
--table[i] t.i 当索引为字符串类型时的一种简化写法
--gettable_event(t, i) 采用索引访问本质上是一个类似这样的函数调用

--实例

print("实例")
site = {}
site["key"] = "www.taobao.com"
print(site["key"])
print(site.key)     --www.taobao.com
