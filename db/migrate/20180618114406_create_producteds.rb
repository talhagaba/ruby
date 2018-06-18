class CreateProducteds < ActiveRecord::Migration[5.2]
  def change
    create_table :producteds do |t|
      t.string :productName
      t.text :productDescription
      t.integer :position
      t.integer :productPrice
      t.integer :discount
      t.boolean :visible
      t.string :picture

      t.timestamps
    end
  end
end
