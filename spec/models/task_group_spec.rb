require 'spec_helper'

describe TaskGroup do
  it{should belong_to :project}
  it{should have_many :tasks}
end
