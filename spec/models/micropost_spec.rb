require 'rails_helper'

RSpec.describe Micropost, type: :model do
  before do
    user = User.create(name: "name", email: "email")
    Micropost.create(content: "sample content", user: user)
  end

  it "sample test" do
    expect(Micropost.count).to eq(1)
  end
end
