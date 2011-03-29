class Project < ActiveRecord::Base

  validates :project_title , :presence => true
  validates :project_description , :presence => true

  has_many :task_groups
  has_many :persons
end
