class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.text :title
      t.float :price, default: 0
      t.string :brand

      t.timestamps
    end
  end
end
