class CreateRouteCoords < ActiveRecord::Migration[6.0]
  def change
    create_table :route_coords do |t|
      t.float :latitude
      t.float :longitude
      t.integer :route_id

      t.timestamps
    end
  end
end
