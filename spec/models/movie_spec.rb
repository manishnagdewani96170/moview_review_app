require 'rails_helper'

RSpec.describe Movie, type: :model do

  it { should belong_to(:actor) }
  it { should belong_to(:director) }
  

  let(:actor) { create(:actor) }
  let(:director) { create(:director) }


  subject {
    described_class.new(name: "Gone in 60 seconds",
      description: "A retired master car thief must come back to the industry and steal fifty cars with his crew in one night to save his brother's life.",
      year: 2000,
      actor: actor,
      director: director,
      filming_location: "Los Angeles",
      country: "US")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a year" do
    subject.year = nil
    expect(subject).to_not be_valid
  end
end
