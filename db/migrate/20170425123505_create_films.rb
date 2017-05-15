class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title
      t.text :text
      t.string :video

      t.timestamps
    end
  end
end
