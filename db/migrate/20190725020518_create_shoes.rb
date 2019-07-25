class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :description
      t.decimal :year_purchased
      t.decimal :mileage
      t.boolean :active

      t.timestamps
    end
  end
end
