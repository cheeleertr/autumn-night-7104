require "rails_helper"

RSpec.describe MemberFacade do
  describe "#get_members_by_nation" do
    it "should return Member objects when givin nation" do
      facade = MemberFacade.new
      response = facade.get_members_by_nation("fire+nation")

      expect(response).to be_an Array
      expect(response).to be_all Member
    end
  end
end