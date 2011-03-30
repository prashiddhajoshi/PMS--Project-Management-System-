require 'spec_helper'

describe Project do

  before do
    @project = Project.create!(:project_title =>"ABC", :project_description => "simple")
  end

  it{ should have_many :task_groups }

  it{ should validate_presence_of :project_title }
  it{ should validate_presence_of :project_description }

  context "should have the same project title" do
    it " - checks project info " do
      @project.project_title.should == "ABC"
      @project.project_description.should == "simple"
    end
  end

end