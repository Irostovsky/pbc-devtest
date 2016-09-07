class Location < ActiveRecord::Base

  has_and_belongs_to_many :location_groups
  validates_presence_of :name

  scope :by_country_code, -> (code) { joins(:location_groups =>
      {:panel_provider => :country}).where('countries.code = ?', code) }

end
