--lua 循环
--循环结构在一定条件下反复执行某段程序的流程结构，被反复执行的程序称为循环体，
--循环语句有循环体和循环终止条件两部分组成的，这一点于其他编程语言一致

--[[
--                  #
--                  |
--                  |
--                  |<-----------------------
--                  |                       |
--                  |                       |
--                  |               -----------------
--                  |               |   条件代码    |
--                  |               -----------------
--                  |                       /\
--                  |                       |
--                  |                       |
--                  \/                      |
--                 /  \                     |
--               /      \                   |
--             /          \         如果条件为 true
--           /              \               |
--           |      条件     |---------------
--           \              /
--             \          /
--               \      /
--                 \  /
--                  |
--                  |
--                  |
--                  |
--                  |
--          如果条件为 false
--                  |
--                  |
--                  |
--                  \/
--]]

--lua 中提供的集中循环处理方式
--while                 在条件为 true 时，让程序重复执行循环体，执行语句前检查条件是否为 true
--for                   重复执行指定语句，重复次数可在 for 循环中控制
--repeat ... until      重复执行循环，直到指定的条件为真时
--循环嵌套              可以在循环内嵌套一个或者多个循环语句

--循环控制语句
--break
--[[
while(true)
    do
        print("循环将永远执行下去")
    end
--]]

--while 循环语句详解
--lua 编程语言中 while 循环语法
--[[
--while(condition)
--do
--  statements
--end
--]]

--statements 作为循环体语句可以是一条或者多条语句，condition 可以是任意表达式
--在 condition 为真时执行循环体

--流程图如下

--[[
--                  #
--                  |
--                  |   while(condition)
--                  |   do
--                  |       statements
--                  |   end
--                  \/
--                 /  \
--               /      \
--             /          \
--           /              \
--  ------->|   condition    |---------------
--  |        \              /               |
--  |          \          /                 |
--  |            \      /                   |
--  |              \  /                     |
--  |               |   if condition        |
--  |               |       is true         |
--  |               \/                      |
--  |       -----------------               \/  if condition
--  |       |   code block  |               |       is false
--  |       -----------------               |
--  |               |                       |
--  |               |                       |
--  ----------------|                       |
--                                          |
--                                          |
--                                          |
--              -----------------------------
--              |
--              |
--              \/
--              #
--]]

print("while 实例")
a = 10
while(a < 20)
    do
        print("a 的值为：", a)
        a = a + 1
    end
--lua for 循环
--可以随意控制循环次数
--数值 for 循环
--语法格式
--for var = exp1, exp2, exp3 do
--  <循环体>
--end
--var 从 exp1 变化到 exp3，步长递增为 exp3,其中 exp3 时可选参数，默认值为 1

print("数值 for 实例")

function f(x)
    print("function")
    return x * 2
end
for i = 1, f(5) do
    print(i)
end

for i = 1, f(10) do
    print(i)
end
for i = 10, 1, -1 do
    print(i)
end

--for的三个表达式在循环开始前一次性求值，以后不再进行求值。
--比如上面的f(x)只会在循环开始前执行一次，其结果用在后面的循环中

--范围 for 循环
--通过迭代器来遍历所有值
--语法格式
--a = {"one" "sd". "three"}
--for i, v in ipairs(a) do
--  print(i, v)
--end

print("实例")
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
for i, v in ipairs(days) do
    print(v)
end

a = 10
repeat
    print(a)
    a = a + 1
until(a > 15)
