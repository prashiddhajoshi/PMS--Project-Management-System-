class Task < ActiveRecord::Base

  validates :title , :presence => true
  validates :description , :presence => true

  belongs_to :task_group

end
