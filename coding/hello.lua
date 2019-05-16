--lua 基本语法
print(a)    --nil
b = 10      --全局变量的创建

--[[
--在默认情况下，变量总是认为是全局的
--全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的
--全局变量也不会出错，只不过得到的结果是：nil
--]]

print(b)    --10
b = nil     --全局变量的销毁

print("Hello World!")   --Hello World
print("www.taobao.com") --www.taobao.com

--标识符
--不允许使用特殊字符定义标识符，如 @,$,%
--其中常见的正确写法
--mhod, zara, abc, mov_na, a_123, _temd

print(2)
local tab = {"asd", "qd"}
print(tab[1])
print(tab[0])
print(tab[2])
