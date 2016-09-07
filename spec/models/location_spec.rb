require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should validate_presence_of(:name) }

  describe 'by_country_code' do
    it 'should return empty set if no items' do
      expect(Location.by_country_code('co')).to be_empty
    end

    it 'should return locations for country' do
      ua = create :country
      us = create :country
      lg1 = create :location_group, panel_provider: ua.panel_provider
      lg2 = create :location_group, panel_provider: us.panel_provider

      location1 = create :location
      location2 = create :location
      create :location
      lg1.locations << location1
      lg1.locations << location2
      lg2.locations << location2
      expect(Location.by_country_code('co')).to be_empty
      expect(Location.by_country_code(ua.code)).to eq [location1, location2]
      expect(Location.by_country_code(us.code)).to eq [location2]
    end
  end
end
