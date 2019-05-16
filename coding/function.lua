--lua 函数
--在 lua 中，函数是对语句和表达式进行抽象的主要方法，既可以用来处理一些特殊工作，
--也可以用来计算一些值
--lua 函数的主要用途
--1、完成指定的任务，这种情况下函数作为调用语句使用
--2、计算并返回值，这种情况下函数作为赋值语句的表达式使用

--函数定义格式如下
--[[
--optional_function_scope function function_name(arguement1, arguement2, ...)
--  function_body
--  return result_params_comma_separated
--end
--]]

--解析
--optional_function_scope: 该参数是可选的制定函数是全局函数还是局部函数，未设置该参数默认为全局函数，
--如果要说明其为局部函数需要加关键字 local

--function_name: 制定函数名称

--arguement1, arguement2, ... : 函数参数，函数也可以不带参数

--function_body: 函数体

--result_params_comma_separated: 函数返回值，lua 语言支持多个函数返回值，以逗号隔开

--实例

print("实例")
local function max(left, right)
    if (left > right) then
        result = left
    else
        result = right
    end
    return result
end
print(max(10, 4))
print(max(5, 6))

--可以将函数作为参数传递给函数

print("实例")
myprint = function(param)
    print("这是打印函数 -   ##", param, "##")
end
function add(left, right, functionPrint)
    result = left + right
    functionPrint(result)
end
myprint(10)
add(2, 5, myprint)

--多返回值
--lua 函数可以返回多个值，

s, e = string.find("www.taobao.com", "www")
print(s, e)

print("--------实例--------")
function maxinum (a)
    local mi = 1
    local m = a[mi]
    for i, val in ipairs(a) do
        if (val > m) then
            mi = i
            m = val
        end
    end
    return m, mi
end
print(maxinum({8, 10, 23, 12, 5}))
--可变参数列表于 C 语言类似
--[[
--语法格式
--function add(...)
--local s = 0
--  for i, v in ipairs{...} do
--      s = s + v
--  end
--return s
--end
--print(add(1, 4, 5, 6))
--]]


print("实例")
function average (...)
    result = 0
    local arg = {...}
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入" .. #arg .. "个数")
    return result / #arg
end
print("平均值为：", average(10, 4, 3, 5, 76, 9))
--我们也可以使用 select('#', ...) 来获取可变参数的数量
function average (...)
    result = 0
    local arg = {...}
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入" .. select("#", ...) .. "个数")
    return result / select("#", ...)
end
print("平均值为：", average(10, 3, 7, 90, 10))
--有时候我们可能需要几个固定参数加上可变参数，固定参数必须在可变参数之前

function fwrite (fmt, ...)
    return io.write(string.format(fmt, ...))
end
fwrite("runoon\n")
fwrite("%d%d\n", 1, 2)
--通常在遍历变长数组的时候只需要使用 {...}，然而变长参数可能会包含一些 nil，那么就可以使用 select
--函数来访问变长参数了：select("#", ...) 或者 select(n, ...)
--其中 select("#", ...) 返回可变参数的长度
--select(n, ...) 用于访问 n 到 select("#", ...) 的参数
--调用 select 时，必须传入一个固定实参 selector 如果 selector 为数字 n
--那么，select 返回它的第 n 个可变实参，否则只能为字符串“#，这样 select 会返回
--变长参数的总数

--实例
print("实例")
do
    function foo (...)
        for i = 1, select("#", ...) do
            local arg = select(i, ...)
            print("arg", arg)
        end
    end
    foo(1, 2, 3, 4)
end
