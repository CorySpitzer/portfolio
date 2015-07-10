class Post < ActiveRecord::Base
  has_many :comments, as: :publishable
end
