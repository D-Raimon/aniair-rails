require 'rails_helper'

RSpec.describe "shows/index", type: :view do
  before(:each) do
    assign(:shows, [
      Show.create!(
        :name => "Name",
        :airday => "Airday",
        :episodes => 2,
        :image_url => "Image Url",
        :description => "Description",
        :trailer_url => "Trailer Url"
      ),
      Show.create!(
        :name => "Name",
        :airday => "Airday",
        :episodes => 2,
        :image_url => "Image Url",
        :description => "Description",
        :trailer_url => "Trailer Url"
      )
    ])
  end

  it "renders a list of shows" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Airday".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Trailer Url".to_s, :count => 2
  end
end
