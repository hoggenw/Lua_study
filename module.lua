-- a = "hello world";
-- t.n = t,n + 1;
a,b = 10, "hello";
print(a,b);
i = 0;
while(i < 2)
	do
	print("循环2次");
	i = i + 1; 
end
if(0)
	then
	print("0 is true");
else
	print("0 is false");

end

function max(number1, number2)
	-- body
	if(number1 > number2) then
		result = number1;
		else
			result = number2
			end
			return result;
end
-- 调用函数
print("两值比较最大值为 ",max(10,4))
print("两值比较最大值为 ",max(5,6))


myPrint = function ( param )
	-- body
	print("这是打印函数 -   ##",param,"##");

end
function add(number1,number2,functionPrint)
	result = number1 + number2;
	functionPrint(result);
	-- body
end

myPrint(10);
add(2,5,myPrint);

s,e = string.find("www.runoob.com", "runoob") ;
print(s,e);

function maximum(a)
	-- body
	local mi = 1;
	local m = a[mi];
	for i,v in ipairs(a) do
		if v > m then
			mi = i;
			m = v;
			end
	end
	return m , mi;
end

print(maximum({8,10,23,12,5}));

function average(...)
	-- body
	result = 0;
	local arg = {...};
	for i,v in ipairs(arg) do
		result = result + v;

	end
	print("总共传入 " .. #arg .. " 个数");
	return result/#arg;
end

print("平均值为",average(10,5,3,4,5,6));

testString1 = "this the first number";
testString2 = "number";
string.upper(testString1);
print("upper string:"..string.upper(testString1));
print("lower string:"..string.lower(string.upper(testString1)));
resultString = string.gsub(testString1,"th","ps",1)
print(resultString);
print(testString1);
print(string.reverse(resultString));
print(string.format("the value is:%s",testString2));
print(string.len(testString1));
print(string.rep(testString2,2));


array = {"Lua", "Tutorial"};

for i=1,2 do
	print(array[i]);
end


array = {}

for i= -2, 2 do
   array[i] = i *2
end

for i = -2,2 do
   print(array[i])
end

mytable = {}
print("mytable 的类型是 ",type(array))

mytable[1]= "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])


alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

alternatetable = nil
print("alternatetable 是 ", alternatetable)

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)


fruits = {"banana","orange","apple"}
-- 返回 table 连接后的字符串
print("连接后的字符串 ",table.concat(fruits))

-- 指定连接字符
print("连接后的字符串 ",table.concat(fruits,", "))

-- 指定索引来连接 table
print("连接后的字符串 ",table.concat(fruits,", ", 2,3))


table.insert(fruits,"mango");
print("索引为 4 的元素为 ",fruits[4]);

table.insert(fruits,2,"grapes");
print("索引为 2 的元素为 ",fruits[2]);
print("最后一个元素为 ",fruits[5]);
table.remove(fruits)
print("移除后最后一个元素为 ",fruits[5])


fruits = {"banana","orange","apple","grapes"}
print("排序前")
for k,v in ipairs(fruits) do
    print(k,v)
end

table.sort(fruits);
print("排序后")
for k,v in ipairs(fruits) do
    print(k,v)
end


