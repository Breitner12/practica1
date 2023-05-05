class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :marca
      t.string :precio
      t.string :modelo
      t.string :memoria

      t.timestamps
    end
  end
end
