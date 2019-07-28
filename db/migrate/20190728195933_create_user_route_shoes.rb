class CreateUserRouteShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_route_shoes do |t|
      t.integer :user_id
      t.integer :route_id
      t.integer :shoe_id

      t.timestamps
    end
  end
end
