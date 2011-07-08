class RenamePostsColumn < ActiveRecord::Migration
  def self.up
    rename_column :posts, :author, :user_id
  end

  def self.down
    rename_column :posts, :user_id, :author
  end
end
