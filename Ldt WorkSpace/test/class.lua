
function copyPeople(tab)
	local ins = {};
	 for key, var in pairs(tab) do
	 	 ins[key] = var;
	 end
	return ins;
end

People = {}
People.sayHi = function (self)
	print("pepeo say i" .. self.name);
end

People.new = function (name)
	 local self = copyPeople(People);
	 self.name = name;
	 return self;
end

local  p = People.new("hoggen"); 
p:sayHi();
--p.sayHi(p);
--local p = copyPeople(People);
--p.sayHi();

Man = {};

Man.new = function (name)
	local self = People(name);
	
	return self;
end

