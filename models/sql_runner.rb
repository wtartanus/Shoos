class SqlRunner

  def self.run( sql )
    begin
      db = PG.connect( {dbname: "shoes_shop", host: "localhost"} )
      db.exec( sql )
    ensure
      db.close()
    end
  end

end