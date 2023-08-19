require 'rails_helper'

RSpec.describe Review, type: :model do

  it { should belong_to(:movie) }
  it { should belong_to(:user) }
  

  let(:movie) { create(:movie) }
  let(:user) { create(:user) }


  subject {
    described_class.new(movie: movie,
      user: user,
      rating: 2,
      comment: "US")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a movie" do
    subject.movie = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a user" do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a valid rating" do
    subject.rating = nil
    expect(subject).to_not be_valid
  end
end
