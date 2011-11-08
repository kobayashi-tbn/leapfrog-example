class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :username
      t.timestamps
      t.userstamps
    end
  end

  def self.down
    drop_table :posts
  end
end
