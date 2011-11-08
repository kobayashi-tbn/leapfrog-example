class Post < ActiveRecord::Base
  attr_accessible :title, :content, :username
  leapfrog :user_id
  belongs_to :users
end
