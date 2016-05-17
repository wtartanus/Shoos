require( "minitest/autorun" )
require( "minitest/rg" )
require_relative( "../models/order.rb" )

class TestOrder < MiniTest::Test

  def setup

    options = {
      "name" => "Wojtek",
      "address" => "27 WhiteHart",
      "quantity" => 1,
      "size" => 8
          }

    @order = Order.new( options )
  end

  def test_name
    assert_equal( "Wojtek", @order.name)
  end

  def test_address
    assert_equal( "27 WhiteHart", @order.address)
  end

  def test_quantity
    assert_equal( 1, @order.quantity)
  end

  def test_size
    assert_equal( 8, @order.size)
  end

end