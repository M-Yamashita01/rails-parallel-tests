require 'rails_helper'

RSpec.describe "microposts/edit", type: :view do
  let(:micropost) {
    user = User.create(name: "name", email: "mail")
    Micropost.create!(content: "content", user: user)
  }

  before(:each) do
    assign(:micropost, micropost)
  end

  it "renders the edit micropost form" do
    render

    assert_select "form[action=?][method=?]", micropost_path(micropost), "post" do
    end
  end
end
