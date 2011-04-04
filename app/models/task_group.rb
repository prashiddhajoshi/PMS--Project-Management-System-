class TaskGroup < ActiveRecord::Base

  validates :group_title , :presence =>true
  validates :group_description , :presence =>true

  belongs_to :project
  has_many :tasks, :dependent => :destroy

end
