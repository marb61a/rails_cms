class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :title
      t.string :url
      t.references :menu, index: true

      t.timestamps null: false
    end
    add_foreign_key :menu_items, :menus
  end
end
