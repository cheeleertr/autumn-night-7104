class MemberFacade
  def initialize
  end

  def get_members_by_nation(nation)
    json = AirbenderService.get_members_by_nation(nation)
    # binding.pry
    json.map do |members_data|
      Member.new(members_data)
    end
  end
end