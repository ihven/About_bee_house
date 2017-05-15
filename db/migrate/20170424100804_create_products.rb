class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :text
      t.string :image
      t.string :image1

      t.timestamps
    end
  end
end
