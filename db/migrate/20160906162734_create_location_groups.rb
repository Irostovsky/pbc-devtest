class CreateLocationGroups < ActiveRecord::Migration
  def change
    create_table :location_groups do |t|
      t.string :name
      t.belongs_to :country, index: true
      t.belongs_to :panel_provider, index: true

      t.timestamps null: false
    end
  end
end
