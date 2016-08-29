require_relative "market_factory"

class MarketSimulator
  def self.start
    MarketFactory.create_market
  end
end

MarketSimulator.start
