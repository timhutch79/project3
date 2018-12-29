class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.date :dateofbirth
      t.string :address
      t.string :address2
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country
      t.boolean :terms

      t.timestamps
    end
  end
end
