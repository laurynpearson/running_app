
class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.datetime :start_date_local
      t.float :distance
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
