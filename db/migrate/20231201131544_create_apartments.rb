class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.integer :bed_number
      t.integer :price_per_night
      t.text :description
      t.boolean :wifi
      t.belongs_to :user, index: true
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
