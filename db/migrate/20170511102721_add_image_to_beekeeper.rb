class AddImageToBeekeeper < ActiveRecord::Migration[5.0]
  def change
    add_column :beekeepers, :image, :string
    add_column :beekeepers, :image1, :string
  end
end
