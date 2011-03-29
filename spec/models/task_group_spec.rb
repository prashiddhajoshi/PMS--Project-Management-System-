require 'spec_helper'

describe TaskGroup do

  it{should belong_to :project}
  it{should have_many :tasks}

  it{ should validate_presence_of :group_title }
  it{ should validate_presence_of :group_description }

  context "it should have the same group title" do
    it " -checks group info " do
      task_group = TaskGroup.create(:group_title => "new group", :group_description => "simple GRP1")

      task_group.group_title.should == "new group"
      task_group.group_description.should == "simple GRP1"
    end
  end



end
