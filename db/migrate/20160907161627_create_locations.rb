class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :location_groups_locations, id: false do |t|
      t.belongs_to :location, index: true
      t.belongs_to :location_group, index: true
    end

  end
end
