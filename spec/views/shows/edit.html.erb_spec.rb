require 'rails_helper'

RSpec.describe "shows/edit", type: :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :name => "MyString",
      :airday => "MyString",
      :episodes => 1,
      :image_url => "MyString",
      :description => "MyString",
      :trailer_url => "MyString"
    ))
  end

  it "renders the edit show form" do
    render

    assert_select "form[action=?][method=?]", show_path(@show), "post" do

      assert_select "input[name=?]", "show[name]"

      assert_select "input[name=?]", "show[airday]"

      assert_select "input[name=?]", "show[episodes]"

      assert_select "input[name=?]", "show[image_url]"

      assert_select "input[name=?]", "show[description]"

      assert_select "input[name=?]", "show[trailer_url]"
    end
  end
end
