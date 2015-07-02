class Project < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  has_and_belongs_to :Skill
end
