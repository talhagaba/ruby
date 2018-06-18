class CreateProducts < ActiveRecord::Migration[5.2]
  def up
    create_table :products do |t|
   t.integer "page_id"
      t.string  "productName"
      t.text "productDescription"
      t.integer "position"
      t.integer "productPrice"
      t.integer "discount"
      t.boolean "visible", :default => false
      t.string "picture"
      t.timestamps
    end
          add_index("products", "page_id")
  end

  def down
  	drop_table :products
  end

end
