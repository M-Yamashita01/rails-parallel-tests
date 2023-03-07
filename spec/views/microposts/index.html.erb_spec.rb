require 'rails_helper'

RSpec.describe "microposts/index", type: :view do
  before(:each) do
    user = User.create(name: "name", email: "mail")
    assign(:microposts, [
      Micropost.create!(content: "content", user: user),
      Micropost.create!(content: "content2", user: user),
    ])
  end

  it "renders a list of microposts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
