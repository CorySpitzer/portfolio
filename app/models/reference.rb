class Reference < ActiveRecord::Base
  validates_presence_of :referee
  validates_presence_of :referee_info
  validates_presence_of :body

  belongs_to :user
end
