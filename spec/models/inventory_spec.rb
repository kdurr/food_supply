require 'spec_helper'

describe Inventory do
  
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :quantity }

end