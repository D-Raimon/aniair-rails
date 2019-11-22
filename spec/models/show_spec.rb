require 'rails_helper'

RSpec.describe Show, type: :model do

  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.title = "Bleach"
    subject.description = "Ichigo Kurosaki is an ordinary high schooler—until..."
    subject.image_url = "www.something.com/this_is_a_thumbnail"
    subject.video_url = "www.something.com/this_is_a_trailer"
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.title = "Bleach"
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_date" do
    subject.title = "Bleach"
    subject.description = "Ichigo Kurosaki is an ordinary high schooler—until..."
    expect(subject).to_not be_valid
  end

  it "is not valid without a end_date" do
    subject.title = "Bleach"
    subject.description = "Ichigo Kurosaki is an ordinary high schooler—until..."
    subject.image_url = "www.something.com/this_is_a_thumbnail"
    expect(subject).to_not be_valid
  end
end