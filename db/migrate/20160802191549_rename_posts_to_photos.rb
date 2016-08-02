class RenamePostsToPhotos < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :posts, :photos
  end

  def self.down
    rename_table :photos, :posts
  end
end
