class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, index: true
      t.belongs_to :apartment, index: true
      t.datetime :coming_date
      t.datetime :leaving_date
      t.timestamps
    end
  end
end
