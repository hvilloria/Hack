class Market
  attr_accessor :hallways, :carts, :name, :address

  def initialize name, address
    @hallways = []
    @carts = []
    @name = name
    @address = address
  end
end
