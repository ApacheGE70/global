class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.integer :number
      t.integer :likes
      t.integer :page_id
      t.string :type
      t.text :text

      t.timestamps null: false
    end
  end
end
