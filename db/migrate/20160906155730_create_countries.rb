class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :code
      t.belongs_to :panel_provider, index: true

      t.timestamps null: false
    end
  end
end
