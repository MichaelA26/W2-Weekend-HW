require("minitest/autorun")
require('minitest/rg')
require_relative("../guest")

class GuestsTest < MiniTest::Test

  def setup
    @guest = Guests.new("Leonardo", 50)
  end

  def test_customer_has_name
    assert_equal("Leonardo", @guest.name())
  end

  def test_customer_has_money
    assert_equal(50, @guest.wallet())
  end

end
