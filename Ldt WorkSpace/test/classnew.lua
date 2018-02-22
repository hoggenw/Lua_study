function People(name)
  local self = {}
  
  local function init()
  	 self.name = name;
  end
  
  
  self.sayhi =  function()
    print("hello  " .. self.name);
  end
  
  init();
  return self
	
end

local p = People("hoggen");
p:sayhi();

function Man(name)
  local self = People(name)
  
  local function init()

  end
  
  
  self.sayhello =  function()
    print("hello  " .. self.name);
  end
  
  init();
  return self
	
end

local m = Man("hoeggnw");
m:sayhello();



