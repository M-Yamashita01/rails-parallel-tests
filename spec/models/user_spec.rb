require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    User.create(name: "name", email: "email")
  end

  it "sample test" do
    expect(User.count).to eq(1)
  end
end
