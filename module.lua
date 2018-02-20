module = {}

module.constant = "this is a constant";

function module.func1( ... )
	-- body
	io.write("这是一个公有函数！\n");
end

local function func2( ... )
	-- body
	print("这是一个私有函数！")
end 

function module.func3()
    func2()
end


-- co = coroutine.create(
--     function(i)
--         print(i);
--     end
-- )
 
-- coroutine.resume(co, 1)   -- 1
-- print(coroutine.status(co))  -- dead
 
-- print("----------")
 
-- co = coroutine.wrap(
--     function(i)
--         print(i);
--     end
-- )
 
-- co(1)
 
-- print("----------")
 
-- co2 = coroutine.create(
--     function()
--         for i=1,10 do
--             print(i)
--             if i == 3 then
--                 print(coroutine.status(co2))  --running
--                 print(coroutine.running()) --thread:XXXXXX
--             end
--             coroutine.yield()
--         end
--     end
-- )
 
-- coroutine.resume(co2) --1
-- coroutine.resume(co2) --2
-- coroutine.resume(co2) --3
 
-- print(coroutine.status(co2))   -- suspended
-- print(coroutine.running())
 
-- print("----------")

function foo( a )
	-- body
	 print("foo 函数输出", a)
    return coroutine.yield(2 * a) -- 返回  2*a 的值
end

co = coroutine.create(function ( a,b )
	-- body
	print("第一次协同程序执行输出", a, b);
	local r = foo(a + 1);
	 print("第二次协同程序执行输出", r);
	 local r, s = coroutine.yield(a + b, a - b) ;
	  print("第三次协同程序执行输出", r, s)
    return b, "结束协同程序"  
end
)
print("main", coroutine.resume(co, 1, 10)) -- true, 4
--resume成功返回true，yield挂起结束，返回4
print("--分割线----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---分割线---")

 
return module;


