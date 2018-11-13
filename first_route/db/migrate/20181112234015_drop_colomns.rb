class DropColomns < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :title
    remove_column :artworks, :image_url
    remove_column :artworks, :artist_id
    
    add_column :artworks, :title, :string, null: false
    add_column :artworks, :image_url, :string, null: false
    add_column :artworks, :artist_id, :integer, null: false
    
    add_index :artworks, :image_url
    add_index :artworks, :artist_id
    add_index :artworks, [:title, :artist_id], unique: true
  end
end
