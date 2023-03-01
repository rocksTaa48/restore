class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false, default: ""
      t.text :body
      t.string :quantity, null: false, default: 0
      t.decimal :price, null: false, default: 0, precision: 10, scale: 3
      t.belongs_to :category, foreign_key: true, index: true, null: false

      t.timestamps
    end
    add_index :products, :quantity
  end
end
