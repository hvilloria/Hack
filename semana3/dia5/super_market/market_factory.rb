require_relative "./classes/market"
require_relative "./classes/product"
require_relative "./classes/hallway"
require_relative "./classes/shelf"

class MarketFactory
  def self.create_market
    market = Market.new "Los tres cochinitos", "Banana Republic"

    shelfs = []
    products = []
    create_product products, "Product1", "1", "8474", "Cereales"
    create_product products, "Product2", "2", "8474", "Cereales"
    create_shelf shelfs, products
    create_hallway market, shelfs, "Pasillo Anti-celiaco!", 1, "Cereales"

    shelfs = []
    products = []
    create_product products, "Product3", "3", "8474", "Carnes"
    create_product products, "Product4", "4", "8474", "Carnes"
    create_shelf shelfs, products
    create_hallway market, shelfs, "Carnivoros!", 1, "Carnes"
  end

  private

  def self.create_hallway market, shelfs, name, number, type_of
    market.hallways << Hallway.new(name, number, type_of, shelfs)
  end

  def self.create_shelf shelfs, products
    shelfs << Shelf.new(products)
  end

  def self.create_product products, name, number, price, type_of
    products << Product.new(name, number, price, type_of)
  end
end
