class AirbenderService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.get_members_by_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=200")
    JSON.parse(response.body, symbolize_names: true)
  end
end