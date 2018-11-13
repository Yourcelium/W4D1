class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, presence: true
      t.string :image_url, presence: true
      t.integer :artist_id, presence: true
      t.timestamps
    end
    add_index :artworks, :title, unique: true
    add_index :artworks, :image_url
    add_index :artworks, :artist_id
    add_index :artworks, [:title, :artist_id], unique: true
  end
end
