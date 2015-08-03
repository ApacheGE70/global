class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :menu_type
      t.string :website_name
      t.text :description
      t.integer :likes
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
