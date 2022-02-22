class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :species
      t.date :found_on
      t.string :image

      t.timestamps
    end
  end
end
