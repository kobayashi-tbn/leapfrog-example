class AddUserstampsToUsers < ActiveRecord::Migration
  def self.up
    add_userstamps :users
  end

  def self.down
    remove_userstamps :users
  end
end
