class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :location
      t.decimal :distance
      t.string :description
      t.decimal :duration
      t.time :time
      t.decimal :temperature

      t.timestamps
    end
  end
end
