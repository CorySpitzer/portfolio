class Comment < ActiveRecord::Base
  belongs_to :things_with_comments, polymorphic: true
end
