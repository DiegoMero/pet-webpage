class CreateDonations < ActiveRecord::Migration[7.1]
  def change
    create_table :donations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
