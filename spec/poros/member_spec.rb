require 'rails_helper'

RSpec.describe Member do
  it "can create member from hash and have attributes", :vcr do
    hash = {
      "_id": "5cf5679a915ecad153ab68c9",
      "allies": [
          "Appa"
      ],
      "enemies": [
          "Azula"
      ],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/ae/Aang_at_Jasmine_Dragon.png/revision/latest?cb=20130612174003",
      "name": "Aang",
      "affiliation": " Air Acolytes Air Nomads Air Scouts (formerly) Team Avatar"
    }
    member = Member.new(hash)

    expect(member).to be_a Member
    expect(member.id).to eq("5cf5679a915ecad153ab68c9")
    expect(member.name).to eq("Aang")
    expect(member.allies).to eq(["Appa"])
    expect(member.enemies).to eq(["Azula"])
    expect(member.affiliation).to eq(" Air Acolytes Air Nomads Air Scouts (formerly) Team Avatar")
    expect(member.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/ae/Aang_at_Jasmine_Dragon.png/revision/latest?cb=20130612174003")
  end
end