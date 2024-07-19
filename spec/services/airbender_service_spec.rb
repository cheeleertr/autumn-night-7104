require 'rails_helper'

describe AirbenderService do
  context "class methods" do
    context "#get_members_by_nation" do
      it "returns member data", :vcr do
        search = AirbenderService.get_members_by_nation("fire+nation")

        expect(search).to be_a Array
        member_data = search.first

        expect(member_data).to have_key :_id
        expect(member_data[:_id]).to be_a(String)

        expect(member_data).to have_key :name
        expect(member_data[:name]).to be_a(String)

        expect(member_data).to have_key :allies
        expect(member_data[:allies]).to be_a(Array)

        expect(member_data).to have_key :enemies
        expect(member_data[:enemies]).to be_a(Array)

        expect(member_data).to have_key :photoUrl
        expect(member_data[:photoUrl]).to be_a(String)

        expect(member_data).to have_key :affiliation
        expect(member_data[:affiliation]).to be_a(String)
      end
    end
  end
end