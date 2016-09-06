class Country < ActiveRecord::Base
  has_one :panel_provider

   validates_uniqueness_of :code
   validates_presence_of :code
end
