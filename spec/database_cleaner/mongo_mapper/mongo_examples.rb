class Widget
  include ::MongoMapper::Document
  attr_accessible :name
  key :name, String
end

class Gadget
  include ::MongoMapper::Document
  attr_accessible :name
  key :name, String
end