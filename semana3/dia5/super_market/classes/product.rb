class Product
  attr_accessor :name, :code, :price, :type_of

  def initialize name, code, price, type_of
    @name = name
    @code = code
    @price = price
    @type_of = type_of
  end
end
