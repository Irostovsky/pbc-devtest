require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'description' do
    it 'just test' do
      create :user
      expect(User.all.count).to eq 1
    end
  end
end
