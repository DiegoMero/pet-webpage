class CreateSponsorships < ActiveRecord::Migration[7.1]
  def change
    create_table :sponsorships, id: false do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
