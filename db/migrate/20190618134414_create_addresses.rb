class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :phone
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :county
      t.integer :zip_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
