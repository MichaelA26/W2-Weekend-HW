class Guests

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buy(amount)
    @wallet -= amount
  end

end
