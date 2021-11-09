class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :address
      t.string :name
      t.string :contact

      t.timestamps
    end
  end
end
