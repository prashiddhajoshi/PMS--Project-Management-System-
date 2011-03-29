require 'spec_helper'

describe Project do

    before do
      @project = Project.create(:project_title =>"", :project_description => "simple")
    end

    it{ should have_many :task_groups }


    it{should validate_presence_of:project_title}

    #     it{ should validate_presence_of :project_description }
    #


    # it "should have the name ABC" do
    #      @project.project_title.should == nil
    #    end
    #



       # context "it should have the same project title" do
       #
       #          end
       #         it " -checks project info " do
       #           project_title = Project.create(:project_title => "ABA", :project_description => "simple PROJECT")
       #
       #           project_title.should == "ABA"
       #           project_description.should == "simple PROJECT"
       #         end
       #       end

end