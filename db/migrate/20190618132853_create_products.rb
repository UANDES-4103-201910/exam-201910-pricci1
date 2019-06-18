class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.string :variant, null: true
      t.string :short_description
      t.text :long_description
      t.string :type

      t.timestamps
    end
  end
end
