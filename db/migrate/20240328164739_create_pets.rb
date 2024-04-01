class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :nature
      t.string :species
      t.string :gender
      t.string :picture
      t.string :country
      t.string :position

      t.timestamps
    end
  end
end
