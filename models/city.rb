require_relative( '../db/sql_runner' )

class City

  attr_reader( :id, :country_id)
  attr_accessor ( :name )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @country_id = options['country_id']

  end

  def save()
      sql = "INSERT INTO cities
      (
        name, country_id
      )
      VALUES
      (
        $1, $2
      )
      RETURNING id"
      values = [@name, @country_id]
      results = SqlRunner.run(sql, values)
      @id = results.first()['id'].to_i
    end

    def update()
      sql = "UPDATE cities
      SET
      (
        name
      )
      VALUES
      (
        $1
      )
      WHERE id = $2"
      values = [@name]
      results = SqlRunner.run(sql, values)
      @id = results.first()['id'].to_i
    end

    def self.delete_all
      sql = "DELETE FROM cities"
      SqlRunner.run( sql )
    end

end
