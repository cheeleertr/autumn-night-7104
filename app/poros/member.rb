class Member
  attr_reader :id,
              :name,
              :affiliation,
              :allies,
              :enemies,
              :photo_url

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo_url = data[:photoUrl]
  end
end