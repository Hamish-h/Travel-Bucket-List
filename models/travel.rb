require_relative( '../db/sql_runner' )

class Travel

  attr_reader( :id, :country_id, :city_id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @country_id = options['country_id'].to_i
    @city_id = options['city_id'].to_i
  end

  def save()
      sql = "INSERT INTO travels
      (
        country_id, city_id
      )
      VALUES
      (
        $1, $2
      )
      RETURNING id"
      values = [@country_id, @city_id]
      results = SqlRunner.run(sql, values)
      @id = results.first()['id'].to_i
    end

end
