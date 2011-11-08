#ActiveRecord::Schema.define(:version => 0) do
ActiveRecord::Schema.define do
  create_table :dummy_users, :force => true do |t|
    t.string    :name
    t.string    :password
    t.string    :email
      
    t.timestamps
    t.userstamps
  end
end

ActiveRecord::Schema.define do
  create_table :dummy_todos, :force => true do |t|
    t.string    :title
    t.string    :description
    t.date      :limit_on
    t.boolean   :complete

    t.timestamps
    t.userstamps
  end
end

require File.join(File.dirname(__FILE__), '..', 'db/create_recipe')
require File.join(File.dirname(__FILE__), '..', 'db/create_post')
require File.join(File.dirname(__FILE__), '..', 'db/add_userstamps_to_recipe')
require File.join(File.dirname(__FILE__), '..', 'db/add_userstamps_to_post')

CreateRecipe.up
AddUserstampsToRecipe.down

CreatePost.up
AddUserstampsToPost.up