require 'rails_helper'

RSpec.describe Show, type: :model do
  # let!(:user) { create(:user) }

  describe('validations') do
    it('should create a valid show when required fields are complete') do
      show = create(:show)
      expect(show.save).to be(true)
    end
  end
end