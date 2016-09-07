require 'rails_helper'

RSpec.describe TargetGroup, type: :model do
  it { should validate_presence_of(:name) }

  describe 'should clean provider for child' do
    it 'should do it' do
      g = create :target_group
      expect(g.panel_provider_id).not_to eq nil
      child = g.children.create name: '2', panel_provider: create(:panel_provider)
      expect(child.panel_provider_id).to eq nil
    end
  end
end
