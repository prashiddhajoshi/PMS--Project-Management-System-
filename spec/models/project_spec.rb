require 'spec_helper'

describe Project do
  before do
    @project = Project.create(:project_title => "ABC", :project_description => "abc")
  end

    it { should have_many :task_groups }

    it "should have the name ABC" do
      @project.project_title.should == "ABC"
    end
end