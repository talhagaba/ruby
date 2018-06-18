class CreatePageds < ActiveRecord::Migration[5.2]
  def change
    create_table :pageds do |t|
      t.string :pageName
      t.integer :pageNumber

      t.timestamps
    end
  end
end
