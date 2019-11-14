require 'rails_helper'

RSpec.describe "shows/show", type: :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :name => "Name",
      :airday => "Airday",
      :episodes => 2,
      :image_url => "Image Url",
      :description => "Description",
      :trailer_url => "Trailer Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Airday/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Trailer Url/)
  end
end
