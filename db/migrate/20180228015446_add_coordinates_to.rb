class AddCoordinatesTo < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :latitude, :float
    add_column :boats, :longitude, :float
  end
end
