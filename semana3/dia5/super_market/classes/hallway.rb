class Hallway
  attr_accessor :shelfs, :name, :number, :type_of, :carts

  def initialize name, number, type_of, shelfs
    @carts = []
    @shelfs = shelfs
    @name = name
    @number = number
    @type_of = type_of
  end
end
