class CreateBeekeepers < ActiveRecord::Migration[5.0]
  def change
    create_table :beekeepers do |t|
      t.text :text
      t.string :title
      t.text :url1
      t.text :url2
      t.text :url3

      t.timestamps
    end
  end
end
