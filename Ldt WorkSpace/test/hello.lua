--print("hello lua");
--local num = 100;
--print(num);
--function max(a,b)
--  if a>b then
--    return a;
--    else
--    return b;
--  end
--end
--
--print(max(4,3));
--
--for var=1, 100 do
--	print(var);
--end

Config = {hello = "hello lua",world = "wrold"};
Config.words = "hello";
Config.num = 100;
Config.name = "hoggen";
for key, var in pairs(Config) do
   print(key,var);
end

arr = {1,2,3,4,5,5,"hello"};
table.insert(arr,1,"new number 1");
for key, var in pairs(arr) do
	print(key,var);
end

print(table.maxn(arr));

--print(Config.words);
--print(Config.name);
--print(Config.hello);
--print(Config.world);
