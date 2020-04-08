class AddRentableToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :rentable, :boolean
  end
end
