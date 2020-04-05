class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :film_id
      t.integer :user_id

      t.timestamps
    end
  end
end
