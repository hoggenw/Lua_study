print("hello".."world");
-- a = 1;
-- b = a * 2;
-- print(b);

function  fact( n )
	-- body
	if n == 0 then
		return 1
	else
		return n * fact(n - 1)
	end

end
print(fact(5));
print("enter a number")
print(xx);
function testFun(tab,fun)
    for k ,v in pairs(tab) do
        print(fun(k,v));
    end
end


tab={key1="val1",key2="val2"};
testFun(tab,
function(key,val)--匿名函数
    return key.."="..val;
end
);

a = 5;
local b = 5;

function joke(  )
	-- body
	c = 5;
	local  d = 6;
end
joke(); 
print(c,d);

do
 local a = 6;
 b = 6;
 print(a,b);
end

print(a,b);

-- function testFun( tab, fun)
-- 	for k,v in pairs(tab) do
-- 		print(fun(k,v));
--  	-- body
--  end 

-- tab={key1="val1",key2="val2"};
-- testFun(tab,function ( key,val)
-- 	-- body
-- 	return key.."="..val;
-- end
-- );
-- a = io.read("number")
