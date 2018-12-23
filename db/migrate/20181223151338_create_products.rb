class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.json :images
      t.float :discount

      t.timestamps
    end
  end
end
