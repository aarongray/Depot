class ChangePostsColumnType < ActiveRecord::Migration
  def self.up
    change_column :posts, :user_id, :integer
  end

  def self.down
    change_column :posts, :user_id, :string
  end
end
