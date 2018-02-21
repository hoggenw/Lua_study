
Shape = {area = 0}
function Shape:new( o,side )
	-- body
	o = o or {};
	setmetatable(o,self);
	self.__index = self;
	side = side or 0;
	self.area = side * side;
	return o;
end

function Shape:printArea ()
  print("面积为 ",self.area)
end

myshape = Shape:new(nil , 10);
myshape:printArea();


-- 继承

Square = Shape:new();

function Square:new( o,side )
	-- body
	o = o or Shape:new(o,side);
	setmetatable(o,self);
	self.__index = self;
	return o;
end

-- 派生类方法 printArea
function Square:printArea ()
  print("正方形面积为 ",self.area)
end



-- 创建对象
mysquare = Square:new(nil,10)
mysquare:printArea()


Rectangle = Shape:new()
-- 派生类方法 new
function Rectangle:new (o,length,breadth)
  o = o or Shape:new(o)
  setmetatable(o, self)
  self.__index = self
  self.area = length * breadth
  return o
end

-- 派生类方法 printArea
function Rectangle:printArea ()
  print("矩形面积为 ",self.area)
end

-- 创建对象
myrectangle = Rectangle:new(nil,10,20)
myrectangle:printArea()






