class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
    t.column "full_name",:string,:limit =>25
      t.string "password",:limit =>25
      t.string "email",:default=> '',:null =>false
      t.string "roletype", :limit =>25
      t.string "contact", :limit =>25
      t.string "address", :limit =>25


      t.timestamps
      #t.datatime "created_at"
      #t.datatime "updated_at"

    end
  end
  def down
  	drop_table :users
  end
end
