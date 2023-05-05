class CreateLaptops < ActiveRecord::Migration[6.1]
  def change
    create_table :laptops do |t|
      t.string :marca
      t.string :precio
      t.string :modelo
      t.string :ram
      t.string :capacidad

      t.timestamps
    end
  end
end
