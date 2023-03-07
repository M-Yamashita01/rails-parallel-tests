require 'rails_helper'

RSpec.describe "microposts/show", type: :view do
  before(:each) do
    user = User.create(name: "name", email: "mail")
    assign(:micropost, Micropost.create!(content: "content", user: user))
  end

  it "renders attributes in <p>" do
    render
  end
end
