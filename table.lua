tab1 = {key1 = "val1",key2 = "val2","val3"};
for k,v in ipairs(tab1) do
	print(k.."-"..v);
end
print("========")
tab1.key1 = nil;
for k,v in pairs(tab1) do
	print(k.."-"..v);
end
print("========")
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

print("========");

local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end

print("========");

a3 = {};
for i=1,10 do
	a3[i] = i;
end
a3["key"] = "value";
for k,v in pairs(a3) do
	print(k,v)
end