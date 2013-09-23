require 'spec_helper'

describe Inventory do
  
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :quantity }

  it { should have_valid(:title).when('Wheat Thins', 'Beef Jerky') }
  it { should_not have_valid(:title).when(nil, '') } 

  it { should have_valid(:description).when('Original', 'Smoked') }
  it { should_not have_valid(:description).when(nil, '') } 

  it { should have_valid(:quantity).when(250, 100) }
  it { should_not have_valid(:quantity).when(nil, '') } 
end
