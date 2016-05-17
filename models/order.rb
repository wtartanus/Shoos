class Order


  attr_reader :name, :address, :quantity, :size

  def initialize( options )
    @name = options['name']
    @address = options[ 'address' ]
    @quantity = options[ 'quantity' ].to_i
    @size = options[ 'size' ].to_i
  end

  def save
    sql = "INSERT INTO orders(name, address, quantity, size)
           VALUES(
            '#{@name}',
            '#{@address}',
             #{@quantity},
             #{@size}
           )
    "

    SqlRunner.run( sql )
  end

  def self.all
    sql = "SELECT * FROM orders"
    orders = SqlRunner.run( sql )
    result = orders.map { |order| Order.new( order )}
    return result
  end

end