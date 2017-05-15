class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text :text
      t.string :email
      t.string :author

      t.timestamps
    end
  end
end
