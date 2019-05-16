--lua 流程控制
--[[
--
--              #
--              |
--              |
--              |
--              /\
--            /    \
--          /        \
--         |    条件  |------------------
--          \        /                  |
--            \    /                    |
--              \/                      |
--              |              如果条件 |
--              |              为 false |
--        如果条件为 true               |
--              |                       \/
--              |                       |
--              |                       |
--              |                       |
--              |------------------------
--              |
--              |
--              |
--              |
--              #
--]]
--即 if else 语句
--lua 认为 false 和 nil 为假，true 和 !nil 为真

print("实例")
if(0) then
    print("0 为 true")
end

--if 语句
--语法格式
--if(布尔表达式)
--then
--  <循环体>
--end

a = 10
if (a < 20) then
    print("a 小于 20")
end
print("a 的值为：", a)
--if else 语句
--语法格式
--if(布尔表达式)
--then
--  <循环体一>
--else
--  <循环体二>
--end
print("if else 实例")
a = 100
if (a < 20) then
    print("a 小于 20")
else
    print("a 大于 20")
end
print("a 的值为：", a)

m = 100
if (m < 20) then
    print("a 小于 20") 
else
    print("a 大于 20")
end
print(a)

--[[
--if .. elseif .. else
--语法格式
--
--if(布尔表达式 1)
--then
--  <语句一>
--elseif(布尔表达式 2)
--then
--  <语句二>
--else
--  <语句三>
--end
--]]

print("if .. elseif .. else 语句")

a = 100
if (a == 10) then
    print("a = 10")
elseif (a == 20) then
    print("a = 20")
else
    print("not equal")
end
print(a)
