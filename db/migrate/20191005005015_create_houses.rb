class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.date :available_date
      t.decimal :monthly_rent
      t.integer :rooms_available
      t.integer :current_occupants
      t.text :description
      t.string :owner

      t.timestamps
    end
  end
end
